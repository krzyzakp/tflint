package main

import (
	"fmt"

	"github.com/wata727/tflint/tools/utils"
)

type providerMeta struct {
	RuleNameCCList []string
}

func generateProviderFile(mappings mappings) {
	meta := &providerMeta{}

	for _, mapping := range mappings {
		resource := mapping.Resource.Type
		attribute := mapping.Resource.Attribute
		ruleName := fmt.Sprintf("%s_invalid_%s", resource, attribute)

		meta.RuleNameCCList = append(meta.RuleNameCCList, utils.ToCamel(ruleName))
	}

	utils.GenerateFile("rules/provider_model.go", "rules/provider_model.go.tmpl", meta)
}
