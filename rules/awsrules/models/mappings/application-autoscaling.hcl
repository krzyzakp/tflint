mapping {
  resource {
    type      = "aws_appautoscaling_policy"
    attribute = "policy_type"
  }
  model {
    path  = "aws-sdk-go/models/apis/application-autoscaling/2016-02-06/api-2.json"
    shape = "PolicyType"
  }
  test {
    ok = "StepScaling"
    ng = "StopScaling"
  }
}

mapping {
  resource {
    type      = "aws_appautoscaling_policy"
    attribute = "scalable_dimension"
  }
  model {
    path  = "aws-sdk-go/models/apis/application-autoscaling/2016-02-06/api-2.json"
    shape = "ScalableDimension"
  }
  test {
    ok = "ecs:service:DesiredCount"
    ng = "ecs:service:DesireCount"
  }
}

mapping {
  resource {
    type      = "aws_appautoscaling_scheduled_action"
    attribute = "scalable_dimension"
  }
  model {
    path  = "aws-sdk-go/models/apis/application-autoscaling/2016-02-06/api-2.json"
    shape = "ScalableDimension"
  }
  test {
    ok = "ecs:service:DesiredCount"
    ng = "ecs:service:DesireCount"
  }
}

mapping {
  resource {
    type      = "aws_appautoscaling_target"
    attribute = "scalable_dimension"
  }
  model {
    path  = "aws-sdk-go/models/apis/application-autoscaling/2016-02-06/api-2.json"
    shape = "ScalableDimension"
  }
  test {
    ok = "ecs:service:DesiredCount"
    ng = "ecs:service:DesireCount"
  }
}

mapping {
  resource {
    type      = "aws_appautoscaling_policy"
    attribute = "service_namespace"
  }
  model {
    path  = "aws-sdk-go/models/apis/application-autoscaling/2016-02-06/api-2.json"
    shape = "ServiceNamespace"
  }
  test {
    ok = "ecs"
    ng = "eks"
  }
}

mapping {
  resource {
    type      = "aws_appautoscaling_scheduled_action"
    attribute = "service_namespace"
  }
  model {
    path  = "aws-sdk-go/models/apis/application-autoscaling/2016-02-06/api-2.json"
    shape = "ServiceNamespace"
  }
  test {
    ok = "ecs"
    ng = "eks"
  }
}

mapping {
  resource {
    type      = "aws_appautoscaling_target"
    attribute = "service_namespace"
  }
  model {
    path  = "aws-sdk-go/models/apis/application-autoscaling/2016-02-06/api-2.json"
    shape = "ServiceNamespace"
  }
  test {
    ok = "ecs"
    ng = "eks"
  }
}
