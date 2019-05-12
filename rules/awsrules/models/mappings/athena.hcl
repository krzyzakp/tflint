mapping {
  resource {
    type      = "aws_athena_database"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/athena/2017-05-18/api-2.json"
    shape = "DatabaseString"
  }
}

mapping {
  resource {
    type      = "aws_athena_named_query"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/athena/2017-05-18/api-2.json"
    shape = "NameString"
  }
}

mapping {
  resource {
    type      = "aws_athena_named_query"
    attribute = "database"
  }
  model {
    path  = "aws-sdk-go/models/apis/athena/2017-05-18/api-2.json"
    shape = "DatabaseString"
  }
}

mapping {
  resource {
    type      = "aws_athena_named_query"
    attribute = "query"
  }
  model {
    path  = "aws-sdk-go/models/apis/athena/2017-05-18/api-2.json"
    shape = "QueryString"
  }
}

mapping {
  resource {
    type      = "aws_athena_named_query"
    attribute = "description"
  }
  model {
    path  = "aws-sdk-go/models/apis/athena/2017-05-18/api-2.json"
    shape = "DescriptionString"
  }
}
