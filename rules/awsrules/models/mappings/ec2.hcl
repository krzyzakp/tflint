mapping {
  resource {
    type      = "aws_launch_template"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/ec2/2016-11-15/api-2.json"
    shape = "LaunchTemplateName"
  }
  test {
    ok = "foo"
    ng = "foo[bar]"
  }
}
