# AMI resolvida em tempo de plan pelo parâmetro público da AWS: sempre a
# Amazon Linux 2023 mais recente da região, em vez de um ID fixo que expira.
data "aws_ssm_parameter" "al2023" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "app" {
  ami                    = data.aws_ssm_parameter.al2023.value
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]
  iam_instance_profile   = var.instance_profile_name
  monitoring             = true

  # IMDSv2 obrigatório: protege as credenciais da role contra SSRF.
  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  root_block_device {
    volume_type = "gp3"
    volume_size = 8
    encrypted   = true
  }

  user_data                   = file("${path.module}/user_data.sh")
  user_data_replace_on_change = true

  tags = {
    Name = "${var.name_prefix}-app"
  }

  lifecycle {
    # Evita recriar a instância a cada nova AMI publicada pela AWS.
    ignore_changes = [ami]
  }
}
