mapping {
  resource {
    type      = "aws_cloudformation_stack"
    attribute = "template_url"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudformation/2010-05-15/api-2.json"
    shape = "TemplateURL"
  }
}

mapping {
  resource {
    type      = "aws_cloudformation_stack"
    attribute = "capabilities"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudformation/2010-05-15/api-2.json"
    shape = "Capability"
  }
  test {
    ok = "CAPABILITY_NAMED_IAM"
    ng = "CAPABILITY_EXPAND"
  }
}

mapping {
  resource {
    type      = "aws_cloudformation_stack"
    attribute = "on_failure"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudformation/2010-05-15/api-2.json"
    shape = "OnFailure"
  }
  test {
    ok = "DO_NOTHING"
    ng = "DO_ANYTHING"
  }
}

mapping {
  resource {
    type      = "aws_cloudformation_stack"
    attribute = "policy_body"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudformation/2010-05-15/api-2.json"
    shape = "StackPolicyBody"
  }
}

mapping {
  resource {
    type      = "aws_cloudformation_stack"
    attribute = "policy_url"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudformation/2010-05-15/api-2.json"
    shape = "StackPolicyURL"
  }
}

mapping {
  resource {
    type      = "aws_cloudformation_stack"
    attribute = "iam_role_arn"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudformation/2010-05-15/api-2.json"
    shape = "RoleARN"
  }
}

mapping {
  resource {
    type      = "aws_cloudformation_stack_set"
    attribute = "administration_role_arn"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudformation/2010-05-15/api-2.json"
    shape = "RoleARN"
  }
}

mapping {
  resource {
    type      = "aws_cloudformation_stack_set"
    attribute = "capabilities"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudformation/2010-05-15/api-2.json"
    shape = "Capability"
  }
  test {
    ok = "CAPABILITY_NAMED_IAM"
    ng = "CAPABILITY_EXPAND"
  }
}

mapping {
  resource {
    type      = "aws_cloudformation_stack_set"
    attribute = "description"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudformation/2010-05-15/api-2.json"
    shape = "Description"
  }
}

mapping {
  resource {
    type      = "aws_cloudformation_stack_set"
    attribute = "execution_role_name"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudformation/2010-05-15/api-2.json"
    shape = "ExecutionRoleName"
  }
  test {
    ok = "AWSCloudFormationStackSetExecutionRole"
    ng = "AWSCloudFormation/StackSet/ExecutionRole"
  }
}

mapping {
  resource {
    type      = "aws_cloudformation_stack_set"
    attribute = "template_url"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudformation/2010-05-15/api-2.json"
    shape = "TemplateURL"
  }
}

mapping {
  resource {
    type      = "aws_cloudformation_stack_set_instance"
    attribute = "account_id"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudformation/2010-05-15/api-2.json"
    shape = "Account"
  }
  test {
    ok = "123456789012"
    ng = "1234567890123"
  }
}
