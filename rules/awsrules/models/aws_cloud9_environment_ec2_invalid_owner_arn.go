// This file generated by `tools/model-rule-gen/main.go`. DO NOT EDIT

package models

import (
	"log"
	"regexp"

	"github.com/hashicorp/hcl2/hcl"
	"github.com/wata727/tflint/issue"
	"github.com/wata727/tflint/tflint"
)

// AwsCloud9EnvironmentEc2InvalidOwnerArnRule checks the pattern is valid
type AwsCloud9EnvironmentEc2InvalidOwnerArnRule struct {
	resourceType  string
	attributeName string
	pattern       *regexp.Regexp
}

// NewAwsCloud9EnvironmentEc2InvalidOwnerArnRule returns new rule with default attributes
func NewAwsCloud9EnvironmentEc2InvalidOwnerArnRule() *AwsCloud9EnvironmentEc2InvalidOwnerArnRule {
	return &AwsCloud9EnvironmentEc2InvalidOwnerArnRule{
		resourceType:  "aws_cloud9_environment_ec2",
		attributeName: "owner_arn",
		pattern:       regexp.MustCompile(`^arn:aws:(iam|sts)::\d+:(root|user|federated-user|assumed-role)\/?\S*$`),
	}
}

// Name returns the rule name
func (r *AwsCloud9EnvironmentEc2InvalidOwnerArnRule) Name() string {
	return "aws_cloud9_environment_ec2_invalid_owner_arn"
}

// Enabled returns whether the rule is enabled by default
func (r *AwsCloud9EnvironmentEc2InvalidOwnerArnRule) Enabled() bool {
	return true
}

// Type returns the rule severity
func (r *AwsCloud9EnvironmentEc2InvalidOwnerArnRule) Type() string {
	return issue.ERROR
}

// Link returns the rule reference link
func (r *AwsCloud9EnvironmentEc2InvalidOwnerArnRule) Link() string {
	return ""
}

// Check checks the pattern is valid
func (r *AwsCloud9EnvironmentEc2InvalidOwnerArnRule) Check(runner *tflint.Runner) error {
	log.Printf("[INFO] Check `%s` rule for `%s` runner", r.Name(), runner.TFConfigPath())

	return runner.WalkResourceAttributes(r.resourceType, r.attributeName, func(attribute *hcl.Attribute) error {
		var val string
		err := runner.EvaluateExpr(attribute.Expr, &val)

		return runner.EnsureNoError(err, func() error {
			if !r.pattern.MatchString(val) {
				runner.EmitIssue(
					r,
					`owner_arn does not match valid pattern ^arn:aws:(iam|sts)::\d+:(root|user|federated-user|assumed-role)\/?\S*$`,
					attribute.Expr.Range(),
				)
			}
			return nil
		})
	})
}
