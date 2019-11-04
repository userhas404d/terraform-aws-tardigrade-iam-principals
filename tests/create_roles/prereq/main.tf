provider aws {
  region = "us-east-1"
}

resource "random_string" "this" {
  length  = 6
  upper   = false
  special = false
  number  = false
}

data "aws_caller_identity" "current" {}

data "aws_partition" "current" {}

data "aws_region" "current" {}

module "policies" {
  source = "../../../modules/policies/"
  providers = {
    aws = aws
  }

  template_paths = ["${path.module}/../../templates/"]
  template_vars = {
    "account_id" = data.aws_caller_identity.current.account_id
    "partition"  = data.aws_partition.current.partition
    "region"     = data.aws_region.current.name
  }

  policies = [
    {
      name     = "tardigrade-alpha-create-roles-test"
      template = "policies/template.json"
    },
    {
      name     = "tardigrade-beta-create-roles-test"
      template = "policies/template.json"
      path     = "/tardigrade/"
    },
  ]
}

output "policies" {
  value = module.policies.policies
}

output "random_string" {
  value = random_string.this
}
