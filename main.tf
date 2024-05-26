# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "/hostedzone/Z10364473IE4KWDOY01TA"
resource "aws_route53_zone" "rodrigorenteriacloud" {
  lifecycle {
    prevent_destroy = true
  }
  comment           = "HostedZone created by Route53 Registrar"
  delegation_set_id = null
  force_destroy     = null
  name              = "rodrigorenteria.cloud"
  tags              = {}
  tags_all          = {}
}

# __generated__ by Terraform from "E1TXT1POSH7TGK"
resource "aws_cloudfront_distribution" "distro" {
  aliases                         = ["rodrigorenteria.cloud"]
  comment                         = "RESUME"
  continuous_deployment_policy_id = null
  default_root_object             = "index.html"
  enabled                         = true
  http_version                    = "http2"
  is_ipv6_enabled                 = true
  price_class                     = "PriceClass_All"
  retain_on_delete                = false
  staging                         = false
  tags                            = {}
  tags_all                        = {}
  wait_for_deployment             = true
  web_acl_id                      = null
  default_cache_behavior {
    allowed_methods            = ["GET", "HEAD"]
    cache_policy_id            = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods             = ["GET", "HEAD"]
    compress                   = true
    default_ttl                = 0
    field_level_encryption_id  = null
    max_ttl                    = 0
    min_ttl                    = 0
    origin_request_policy_id   = null
    realtime_log_config_arn    = null
    response_headers_policy_id = null
    smooth_streaming           = false
    target_origin_id           = "rodrigorenteria.cloud.s3-website-us-east-1.amazonaws.com"
    trusted_key_groups         = []
    trusted_signers            = []
    viewer_protocol_policy     = "redirect-to-https"
  }
  origin {
    connection_attempts      = 3
    connection_timeout       = 10
    domain_name              = "rodrigorenteria.cloud.s3-website-us-east-1.amazonaws.com"
    origin_access_control_id = null
    origin_id                = "rodrigorenteria.cloud.s3-website-us-east-1.amazonaws.com"
    origin_path              = null
    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "http-only"
      origin_read_timeout      = 30
      origin_ssl_protocols     = ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]
    }
  }
  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }
  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:041777205994:certificate/eb1e25cd-f8da-4f4f-812c-d364e1ce7caf"
    cloudfront_default_certificate = false
    iam_certificate_id             = null
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }
}

# __generated__ by Terraform from "rodrigorenteria.cloud"
resource "aws_s3_bucket" "resume_bucket" {
  bucket              = "rodrigorenteria.cloud"
  bucket_prefix       = null
  force_destroy       = null
  object_lock_enabled = false
  tags                = {}
  tags_all            = {}
}
