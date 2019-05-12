mapping {
  resource {
    type      = "aws_cloud9_environment_ec2"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloud9/2017-09-23/api-2.json"
    shape = "EnvironmentName"
  }
}

mapping {
  resource {
    type      = "aws_cloud9_environment_ec2"
    attribute = "instance_type"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloud9/2017-09-23/api-2.json"
    shape = "InstanceType"
  }
  test {
    ok = "t2.micro"
    ng = "t20.micro"
  }
}

mapping {
  resource {
    type      = "aws_cloud9_environment_ec2"
    attribute = "automatic_stop_time_minutes"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloud9/2017-09-23/api-2.json"
    shape = "AutomaticStopTimeMinutes"
  }
}

mapping {
  resource {
    type      = "aws_cloud9_environment_ec2"
    attribute = "description"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloud9/2017-09-23/api-2.json"
    shape = "EnvironmentDescription"
  }
}

mapping {
  resource {
    type      = "aws_cloud9_environment_ec2"
    attribute = "owner_arn"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloud9/2017-09-23/api-2.json"
    shape = "UserArn"
  }
  test {
    ok = "arn:aws:iam::123456789012:user/David"
    ng = "arn:aws:elasticbeanstalk:us-east-1:123456789012:environment/My App/MyEnvironment"
  }
}

mapping {
  resource {
    type      = "aws_cloud9_environment_ec2"
    attribute = "subnet_id"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloud9/2017-09-23/api-2.json"
    shape = "SubnetId"
  }
}
