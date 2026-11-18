# Sem porta 22: o acesso administrativo é feito pelo AWS Systems Manager (SSM),
# que não exige porta aberta nem chave SSH.
resource "aws_security_group" "web" {
  name        = "${var.name_prefix}-web-sg"
  description = "HTTP restrito aos CIDRs informados; acesso admin via SSM"
  vpc_id      = var.vpc_id

  tags = {
    Name = "${var.name_prefix}-web-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "http" {
  for_each = toset(var.allowed_http_cidrs)

  security_group_id = aws_security_group.web.id
  description       = "HTTP a partir de ${each.value}"
  cidr_ipv4         = each.value
  ip_protocol       = "tcp"
  from_port         = 80
  to_port           = 80
}

# Saída HTTPS: necessária para SSM, atualizações de pacotes e endpoints AWS.
resource "aws_vpc_security_group_egress_rule" "https" {
  security_group_id = aws_security_group.web.id
  description       = "HTTPS de saida (SSM, pacotes, APIs AWS)"
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "tcp"
  from_port         = 443
  to_port           = 443
}

# Saída HTTP: alguns repositórios de pacotes ainda usam porta 80.
resource "aws_vpc_security_group_egress_rule" "http" {
  security_group_id = aws_security_group.web.id
  description       = "HTTP de saida (repositorios de pacotes)"
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "tcp"
  from_port         = 80
  to_port           = 80
}
