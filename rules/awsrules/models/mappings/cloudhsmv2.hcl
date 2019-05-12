mapping {
  resource {
    type      = "aws_cloudhsm_v2_cluster"
    attribute = "source_backup_identifier"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudhsmv2/2017-04-28/api-2.json"
    shape = "BackupId"
  }
  test {
    ok = "backup-rtq2dwi2gq6"
    ng = "rtq2dwi2gq6"
  }
}

mapping {
  resource {
    type      = "aws_cloudhsm_v2_cluster"
    attribute = "hsm_type"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudhsmv2/2017-04-28/api-2.json"
    shape = "HsmType"
  }
  test {
    ok = "hsm1.medium"
    ng = "hsm1.micro"
  }
}

mapping {
  resource {
    type      = "aws_cloudhsm_v2_hsm"
    attribute = "cluster_id"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudhsmv2/2017-04-28/api-2.json"
    shape = "ClusterId"
  }
  test {
    ok = "cluster-jxhlf7644ne"
    ng = "jxhlf7644ne"
  }
}

mapping {
  resource {
    type      = "aws_cloudhsm_v2_hsm"
    attribute = "subnet_id"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudhsmv2/2017-04-28/api-2.json"
    shape = "SubnetId"
  }
  test {
    ok = "subnet-0e358c43"
    ng = "0e358c43"
  }
}

mapping {
  resource {
    type      = "aws_cloudhsm_v2_hsm"
    attribute = "availability_zone"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudhsmv2/2017-04-28/api-2.json"
    shape = "ExternalAz"
  }
  test {
    ok = "us-east-1a"
    ng = "us-east-1"
  }
}

mapping {
  resource {
    type      = "aws_cloudhsm_v2_hsm"
    attribute = "ip_address"
  }
  model {
    path  = "aws-sdk-go/models/apis/cloudhsmv2/2017-04-28/api-2.json"
    shape = "IpAddress"
  }
  test {
    ok = "8.8.8.8"
    ng = "2001:4860:4860::8888"
  }
}
