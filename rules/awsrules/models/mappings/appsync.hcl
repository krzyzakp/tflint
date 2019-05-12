mapping {
  resource {
    type      = "aws_appsync_datasource"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/appsync/2017-07-25/api-2.json"
    shape = "ResourceName"
  }
  test {
    ok = "tf_appsync_example"
    ng = "01_tf_example"
  }
}

mapping {
  resource {
    type      = "aws_appsync_datasource"
    attribute = "type"
  }
  model {
    path  = "aws-sdk-go/models/apis/appsync/2017-07-25/api-2.json"
    shape = "DataSourceType"
  }
  test {
    ok = "AWS_LAMBDA"
    ng = "AMAZON_SIMPLEDB"
  }
}

mapping {
  resource {
    type      = "aws_appsync_graphql_api"
    attribute = "authentication_type"
  }
  model {
    path  = "aws-sdk-go/models/apis/appsync/2017-07-25/api-2.json"
    shape = "AuthenticationType"
  }
  test {
    ok = "API_KEY"
    ng = "AWS_KEY"
  }
}

mapping {
  resource {
    type      = "aws_appsync_resolver"
    attribute = "type"
  }
  model {
    path  = "aws-sdk-go/models/apis/appsync/2017-07-25/api-2.json"
    shape = "ResourceName"
  }
  test {
    ok = "Query"
    ng = "User-Config"
  }
}

mapping {
  resource {
    type      = "aws_appsync_resolver"
    attribute = "field"
  }
  model {
    path  = "aws-sdk-go/models/apis/appsync/2017-07-25/api-2.json"
    shape = "ResourceName"
  }
  test {
    ok = "singlePost"
    ng = "single-post"
  }
}

mapping {
  resource {
    type      = "aws_appsync_resolver"
    attribute = "data_source"
  }
  model {
    path  = "aws-sdk-go/models/apis/appsync/2017-07-25/api-2.json"
    shape = "ResourceName"
  }
  test {
    ok = "tfexample"
    ng = "tf-example"
  }
}

mapping {
  resource {
    type      = "aws_appsync_resolver"
    attribute = "request_template"
  }
  model {
    path  = "aws-sdk-go/models/apis/appsync/2017-07-25/api-2.json"
    shape = "MappingTemplate"
  }
}

mapping {
  resource {
    type      = "aws_appsync_resolver"
    attribute = "response_template"
  }
  model {
    path  = "aws-sdk-go/models/apis/appsync/2017-07-25/api-2.json"
    shape = "MappingTemplate"
  }
}
