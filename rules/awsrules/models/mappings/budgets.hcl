mapping {
  resource {
    type      = "aws_budgets_budget"
    attribute = "account_id"
  }
  model {
    path  = "aws-sdk-go/models/apis/budgets/2016-10-20/api-2.json"
    shape = "AccountId"
  }
  test {
    ok = "123456789012"
    ng = "abcdefghijkl"
  }
}

mapping {
  resource {
    type      = "aws_budgets_budget"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/budgets/2016-10-20/api-2.json"
    shape = "BudgetName"
  }
  test {
    ok = "budget-ec2-monthly"
    ng = "budget:ec2:monthly"
  }
}

mapping {
  resource {
    type      = "aws_budgets_budget"
    attribute = "budget_type"
  }
  model {
    path  = "aws-sdk-go/models/apis/budgets/2016-10-20/api-2.json"
    shape = "BudgetType"
  }
  test {
    ok = "USAGE"
    ng = "MONEY"
  }
}

mapping {
  resource {
    type      = "aws_budgets_budget"
    attribute = "time_unit"
  }
  model {
    path  = "aws-sdk-go/models/apis/budgets/2016-10-20/api-2.json"
    shape = "TimeUnit"
  }
  test {
    ok = "MONTHLY"
    ng = "HOURLY"
  }
}
