provider "aws" {
  access_key = "XXX"
  secret_key = "XXX"
  region     = "us-east-1"
}

resource "aws_route53_zone" "cssubzone" {
   name = "route53.clayshekleton.com"
}

resource "aws_route53_record" "test" {
   zone_id = "${aws_route53_zone.cssubzone.zone_id}"
   name = "test.route53.clayshekleton.com"
   type = "A"
   ttl = "300"
   records = ["8.8.8.8"]
}