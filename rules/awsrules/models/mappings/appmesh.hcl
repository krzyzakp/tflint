mapping {
  resource {
    type      = "aws_appmesh_mesh"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/appmesh/2019-01-25/api-2.json"
    shape = "ResourceName"
  }
}

mapping {
  resource {
    type      = "aws_appmesh_route"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/appmesh/2019-01-25/api-2.json"
    shape = "ResourceName"
  }
}

mapping {
  resource {
    type      = "aws_appmesh_route"
    attribute = "mesh_name"
  }
  model {
    path  = "aws-sdk-go/models/apis/appmesh/2019-01-25/api-2.json"
    shape = "ResourceName"
  }
}

mapping {
  resource {
    type      = "aws_appmesh_route"
    attribute = "virtual_router_name"
  }
  model {
    path  = "aws-sdk-go/models/apis/appmesh/2019-01-25/api-2.json"
    shape = "ResourceName"
  }
}

mapping {
  resource {
    type      = "aws_appmesh_virtual_node"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/appmesh/2019-01-25/api-2.json"
    shape = "ResourceName"
  }
}

mapping {
  resource {
    type      = "aws_appmesh_virtual_node"
    attribute = "mesh_name"
  }
  model {
    path  = "aws-sdk-go/models/apis/appmesh/2019-01-25/api-2.json"
    shape = "ResourceName"
  }
}

mapping {
  resource {
    type      = "aws_appmesh_virtual_router"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/appmesh/2019-01-25/api-2.json"
    shape = "ResourceName"
  }
}

mapping {
  resource {
    type      = "aws_appmesh_virtual_router"
    attribute = "mesh_name"
  }
  model {
    path  = "aws-sdk-go/models/apis/appmesh/2019-01-25/api-2.json"
    shape = "ResourceName"
  }
}

mapping {
  resource {
    type      = "aws_appmesh_virtual_service"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/appmesh/2019-01-25/api-2.json"
    shape = "ResourceName"
  }
}

mapping {
  resource {
    type      = "aws_appmesh_virtual_service"
    attribute = "mesh_name"
  }
  model {
    path  = "aws-sdk-go/models/apis/appmesh/2019-01-25/api-2.json"
    shape = "ResourceName"
  }
}
