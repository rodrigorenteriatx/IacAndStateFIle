terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}

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