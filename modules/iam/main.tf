resource "aws_iam_user" "user" {
  name = var.user_name
  tags = {
    Name = var.user_name
  }
}
