mapping {
  resource {
    type      = "aws_batch_compute_environment"
    attribute = "state"
  }
  model {
    path  = "aws-sdk-go/models/apis/batch/2016-08-10/api-2.json"
    shape = "CEState"
  }
  test {
    ok = "ENABLED"
    ng = "ON"
  }
}

mapping {
  resource {
    type      = "aws_batch_compute_environment"
    attribute = "type"
  }
  model {
    path  = "aws-sdk-go/models/apis/batch/2016-08-10/api-2.json"
    shape = "CEType"
  }
  test {
    ok = "MANAGED"
    ng = "CONTROLLED"
  }
}

mapping {
  resource {
    type      = "aws_batch_job_definition"
    attribute = "type"
  }
  model {
    path  = "aws-sdk-go/models/apis/batch/2016-08-10/api-2.json"
    shape = "JobDefinitionType"
  }
  test {
    ok = "container"
    ng = "docker"
  }
}

mapping {
  resource {
    type      = "aws_batch_job_queue"
    attribute = "state"
  }
  model {
    path  = "aws-sdk-go/models/apis/batch/2016-08-10/api-2.json"
    shape = "JQState"
  }
  test {
    ok = "ENABLED"
    ng = "ON"
  }
}
