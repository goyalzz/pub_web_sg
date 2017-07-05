resource "aws_security_group" "pub_http_sg" {
  name   = "pub_web_sg"
  vpc_id = "${var.vpc_id}"

  # SSH access from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["${var.allowed_cidr}"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${var.allowed_cidr}"]
  }
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["${var.allowed_cidr}"]
  }
}
