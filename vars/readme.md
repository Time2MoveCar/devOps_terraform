## Backend Template

```
terraform {
  backend "s3" {
    bucket         = "apnortheast2-tfstate"
    key            = "${service}/terraform/${layer}/#{service}/${shard}/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
```

## Provider Template

```
provider "aws" {
  region = var.AWS_REGION
}
```

## Remote State Template

```
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config  = merge(var.remote_state.vpc.dev, {})
}
```
