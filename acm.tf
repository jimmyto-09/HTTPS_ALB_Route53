data "aws_acm_certificate" "cert" {
  domain      = "jimmyto09.site"
  statuses    = ["ISSUED"]
  most_recent = true
}