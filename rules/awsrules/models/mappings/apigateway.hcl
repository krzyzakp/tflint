mapping {
  resource {
    type      = "aws_api_gateway_gateway_response"
    attribute = "status_code"
  }
  model {
    path  = "aws-sdk-go/models/apis/apigateway/2015-07-09/api-2.json"
    shape = "StatusCode"
  }
  test {
    ok = "200"
    ng = "004"
  }
}

mapping {
  resource {
    type      = "aws_api_gateway_integration_response"
    attribute = "status_code"
  }
  model {
    path  = "aws-sdk-go/models/apis/apigateway/2015-07-09/api-2.json"
    shape = "StatusCode"
  }
  test {
    ok = "200"
    ng = "004"
  }
}

mapping {
  resource {
    type      = "aws_api_gateway_method_response"
    attribute = "status_code"
  }
  model {
    path  = "aws-sdk-go/models/apis/apigateway/2015-07-09/api-2.json"
    shape = "StatusCode"
  }
  test {
    ok = "200"
    ng = "004"
  }
}

mapping {
  resource {
    type      = "aws_api_gateway_authorizer"
    attribute = "type"
  }
  model {
    path  = "aws-sdk-go/models/apis/apigateway/2015-07-09/api-2.json"
    shape = "AuthorizerType"
  }
  test {
    ok = "TOKEN"
    ng = "RESPONSE"
  }
}

mapping {
  resource {
    type      = "aws_api_gateway_gateway_response"
    attribute = "response_type"
  }
  model {
    path  = "aws-sdk-go/models/apis/apigateway/2015-07-09/api-2.json"
    shape = "GatewayResponseType"
  }
  test {
    ok = "UNAUTHORIZED"
    ng = "4XX"
  }
}

mapping {
  resource {
    type      = "aws_api_gateway_integration"
    attribute = "type"
  }
  model {
    path  = "aws-sdk-go/models/apis/apigateway/2015-07-09/api-2.json"
    shape = "IntegrationType"
  }
  test {
    ok = "HTTP"
    ng = "AWS_HTTP"
  }
}

mapping {
  resource {
    type      = "aws_api_gateway_integration"
    attribute = "connection_type"
  }
  model {
    path  = "aws-sdk-go/models/apis/apigateway/2015-07-09/api-2.json"
    shape = "ConnectionType"
  }
  test {
    ok = "INTERNET"
    ng = "INTRANET"
  }
}

mapping {
  resource {
    type      = "aws_api_gateway_integration"
    attribute = "content_handling"
  }
  model {
    path  = "aws-sdk-go/models/apis/apigateway/2015-07-09/api-2.json"
    shape = "ContentHandlingStrategy"
  }
  test {
    ok = "CONVERT_TO_BINARY"
    ng = "CONVERT_TO_FILE"
  }
}

mapping {
  resource {
    type      = "aws_api_gateway_integration_response"
    attribute = "content_handling"
  }
  model {
    path  = "aws-sdk-go/models/apis/apigateway/2015-07-09/api-2.json"
    shape = "ContentHandlingStrategy"
  }
  test {
    ok = "CONVERT_TO_BINARY"
    ng = "CONVERT_TO_FILE"
  }
}

mapping {
  resource {
    type      = "aws_api_gateway_rest_api"
    attribute = "api_key_source"
  }
  model {
    path  = "aws-sdk-go/models/apis/apigateway/2015-07-09/api-2.json"
    shape = "ApiKeySourceType"
  }
  test {
    ok = "AUTHORIZER"
    ng = "BODY"
  }
}

mapping {
  resource {
    type      = "aws_api_gateway_stage"
    attribute = "cache_cluster_size"
  }
  model {
    path  = "aws-sdk-go/models/apis/apigateway/2015-07-09/api-2.json"
    shape = "CacheClusterSize"
  }
  test {
    ok = "6.1"
    ng = "6.2"
  }
}
