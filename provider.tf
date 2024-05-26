terraform {
  backend "s3" {
    bucket = "s3stateackendrrcloudresume"
    dynamodb_table = "state-lock"
    region = "us-east-1"
    key = "global/mystatefile/terraform.tfstate"
    encrypt = true
  }
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}

# terraform {
#   backend "local" {
#     path = "./sample.tfstate"
#   }
# }

provider "aws" {
  region= "us-east-1"
}

import {
  id = "rodrigorenteria.cloud"
  to = aws_s3_bucket.resume_bucket
}
import {
  id = "E1TXT1POSH7TGK"
  to = aws_cloudfront_distribution.distro
}
import {
  id = "/hostedzone/Z10364473IE4KWDOY01TA"
  to = aws_route53_zone.rodrigorenteriacloud
}