package utils

import (
	"fmt"
	"os"
	"strings"
	"text/template"

	"github.com/iancoleman/strcase"
)

// ToCamel converts a string to CamelCase
func ToCamel(str string) string {
	exceptions := map[string]string{
		"ami":         "AMI",
		"api":         "API",
		"db":          "DB",
		"alb":         "ALB",
		"elb":         "ELB",
		"vpc":         "VPC",
		"elasticache": "ElastiCache",
		"iam":         "IAM",
		"account_id":  "AccountID",
		"subnet_id":   "SubnetID",
		"cluster_id":  "ClusterID",
		"url":         "URL",
		"http":        "HTTP",
		"ip_address":  "IPAddress",
	}
	for pattern, conv := range exceptions {
		str = strings.Replace(str, "_"+pattern+"_", "_"+conv+"_", -1)
		str = strings.Replace(str, pattern+"_", conv+"_", -1)
		str = strings.Replace(str, "_"+pattern, "_"+conv, -1)
	}
	return strcase.ToCamel(str)
}

// GenerateFile generates a new file from the passed template and metadata
func GenerateFile(fileName string, tmplName string, meta interface{}) {
	file, err := os.Create(fileName)
	if err != nil {
		panic(err)
	}

	tmpl := template.Must(template.ParseFiles(tmplName))
	err = tmpl.Execute(file, meta)
	if err != nil {
		panic(err)
	}
}

// GenerateFileWithLogs generates a new file from the passed template and metadata
// The difference from GenerateFile function is to output logs
func GenerateFileWithLogs(fileName string, tmplName string, meta interface{}) {
	GenerateFile(fileName, tmplName, meta)
	fmt.Printf("Create: %s\n", fileName)
}
