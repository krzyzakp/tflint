package main

import (
	"fmt"
	"regexp"
	"strings"

	"github.com/wata727/tflint/tools/utils"
)

type ruleMeta struct {
	RuleName      string
	RuleNameCC    string
	ResourceType  string
	AttributeName string
	Max           int
	Min           int
	Pattern       string
	Enum          []string
	TestOK        string
	TestNG        string
}

func generateRuleFile(mapping mapping, shapes map[string]interface{}) {
	resource := mapping.Resource.Type
	attribute := mapping.Resource.Attribute
	ruleName := fmt.Sprintf("%s_invalid_%s", resource, attribute)
	model := shapes[mapping.Model.Shape].(map[string]interface{})

	meta := &ruleMeta{
		RuleName:      ruleName,
		RuleNameCC:    utils.ToCamel(ruleName),
		ResourceType:  resource,
		AttributeName: attribute,
		Max:           fetchNumber(model, "max"),
		Min:           fetchNumber(model, "min"),
		Pattern:       replacePattern(fetchString(model, "pattern")),
		Enum:          fetchStrings(model, "enum"),
	}

	// Testing generated regexp
	regexp.MustCompile(meta.Pattern)

	utils.GenerateFile(fmt.Sprintf("rules/awsrules/models/%s.go", ruleName), "rules/awsrules/models/pattern_rule.go.tmpl", meta)
	if mapping.Test != nil {
		meta.TestOK = formatTest(mapping.Test.OK)
		meta.TestNG = formatTest(mapping.Test.NG)
		utils.GenerateFile(fmt.Sprintf("rules/awsrules/models/%s_test.go", ruleName), "rules/awsrules/models/pattern_rule_test.go.tmpl", meta)
	}
}

func fetchNumber(model map[string]interface{}, key string) int {
	if v, ok := model[key]; ok {
		return int(v.(float64))
	}
	return 0
}

func fetchStrings(model map[string]interface{}, key string) []string {
	if raw, ok := model[key]; ok {
		list := raw.([]interface{})
		ret := make([]string, len(list))
		for i, v := range list {
			ret[i] = v.(string)
		}
		return ret
	}
	return []string{}
}

func fetchString(model map[string]interface{}, key string) string {
	if v, ok := model[key]; ok {
		return v.(string)
	}
	return ""
}

func replacePattern(pattern string) string {
	if pattern == "" {
		return pattern
	}
	reg := regexp.MustCompile(`\\u([0-9A-F]{4})`)
	replaced := reg.ReplaceAllString(pattern, `\x{$1}`)
	if !strings.HasPrefix(replaced, "^") && !strings.HasSuffix(replaced, "$") {
		return fmt.Sprintf("^%s$", replaced)
	}
	return replaced
}

func formatTest(body string) string {
	if strings.Contains(body, "\n") {
		return fmt.Sprintf("<<TEXT\n%sTEXT", body)
	}
	return fmt.Sprintf(`"%s"`, body)
}
