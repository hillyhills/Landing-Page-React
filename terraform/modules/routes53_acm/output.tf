output "ssl_cert_arn" {
  description = "The arn of the SSL certificate"
  value = aws_acm_certificate.ssl_certificate.arn
}

output "aws_route53_zone_id" {
  description = "The ID of the Route53 zone"
  value = data.aws_route53_zone.dns_zone.zone_id
}