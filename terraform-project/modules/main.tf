module "web_sg" {
  source         = "./modules/security-group"
  sg_name        = "web-security-group"
  sg_description = "Security group for web servers"
  vpc_id         = var.vpc_id

  ingress_rules = [
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["192.168.1.0/24"]
    }
  ]

  tags = {
    Environment = "Production"
    Project     = "WebApp"
  }
}