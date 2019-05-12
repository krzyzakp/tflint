mapping {
  resource {
    type      = "aws_cloudfront_distribution"
    attribute = "http_version"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudfront/2018-11-05/api-2.json"
    shape = "HttpVersion"
  }
  test {
    ok = "http2"
    ng = "http1.2"
  }
}

mapping {
  resource {
    type      = "aws_cloudfront_distribution"
    attribute = "price_class"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudfront/2018-11-05/api-2.json"
    shape = "PriceClass"
  }
  test {
    ok = "PriceClass_All"
    ng = "PriceClass_300"
  }
}
