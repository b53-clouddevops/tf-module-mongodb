# This created the CNAME Record for MongoDB
resource "aws_route53_record" "mongodb" {
  zone_id = "Z096213084GYRYZXR9VK"
  name    = "www.example.com"
  type    = "A"
  ttl     = 300
  records = [aws_eip.lb.public_ip]
}