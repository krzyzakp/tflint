package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"path/filepath"

	"github.com/hashicorp/hcl2/gohcl"
	"github.com/hashicorp/hcl2/hclparse"
)

type mappingFile struct {
	Mappings []mapping `hcl:"mapping,block"`
}

type mapping struct {
	Resource resource `hcl:"resource,block"`
	Model    model    `hcl:"model,block"`
	Test     *test    `hcl:"test,block"`
}

type mappings []mapping

type resource struct {
	Type      string `hcl:"type"`
	Attribute string `hcl:"attribute"`
}

type model struct {
	Path  string `hcl:"path"`
	Shape string `hcl:"shape"`
}

type test struct {
	OK string `hcl:"ok"`
	NG string `hcl:"ng"`
}

func main() {
	files, err := filepath.Glob("rules/awsrules/models/mappings/*.hcl")
	if err != nil {
		panic(err)
	}

	mappings := mappings{}
	for _, file := range files {
		parser := hclparse.NewParser()
		f, diags := parser.ParseHCLFile(file)
		if diags.HasErrors() {
			panic(diags)
		}

		var mf mappingFile
		diags = gohcl.DecodeBody(f.Body, nil, &mf)
		if diags.HasErrors() {
			panic(diags)
		}
		mappings = append(mappings, mf.Mappings...)
	}

	for _, mapping := range mappings {
		raw, err := ioutil.ReadFile(fmt.Sprintf("rules/awsrules/models/%s", mapping.Model.Path))
		if err != nil {
			panic(err)
		}

		var api map[string]interface{}
		err = json.Unmarshal(raw, &api)
		if err != nil {
			panic(err)
		}
		shapes := api["shapes"].(map[string]interface{})

		generateRuleFile(mapping, shapes)
	}

	generateProviderFile(mappings)
}
