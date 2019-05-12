mapping {
  resource {
    type      = "aws_backup_selection"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/backup/2018-11-15/api-2.json"
    shape = "BackupSelectionName"
  }
  test {
    ok = "tf_example_backup_selection"
    ng = "tf_example_backup_selection_tf_example_backup_selection"
  }
}

mapping {
  resource {
    type      = "aws_backup_vault"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/backup/2018-11-15/api-2.json"
    shape = "BackupVaultName"
  }
  test {
    ok = "example_backup_vault"
    ng = "example_backup_vault_example_backup_vault_example_backup_vault"
  }
}
