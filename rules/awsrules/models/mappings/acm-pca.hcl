mapping {
  resource {
    type      = "aws_acmpca_certificate_authority"
    attribute = "type"
  }
  model {
    path  = "aws-sdk-go/models/apis/acm-pca/2017-08-22/api-2.json"
    shape = "CertificateAuthorityType"
  }
  test {
    ok = "SUBORDINATE"
    ng = "ORDINATE"
  }
}
