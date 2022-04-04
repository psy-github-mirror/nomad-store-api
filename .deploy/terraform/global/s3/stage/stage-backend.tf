terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  required_version = "1.1.7"
}

provider "aws" {
  region = "us-east-1"
}

module "backend_config" {
  source = "../../../modules/backends/s3"

  bucket_name   = "xabru-nomad-stage-state-bucket"
  dynamodb_name = "xabru-nomad-stage-table-locks"
}

terraform {
  backend "s3" {
    bucket = "xabru-nomad-stage-state-bucket"
    key    = "global/s3/stage/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "xabru-nomad-stage-table-locks"
    encrypt        = true
  }
}
