resource "aws_instance" "ec2_demo" {
  count             = 1
  ami               = "ami-022e1a32d3f742bd8"
  instance_type     = var.ec2_instance_type
  availability_zone = var.availability_zone.a

  tags = {
    Name = "DEMO-${random_string.id.result}"
  }
}

resource "aws_instance" "ec2_locals_demo" {
  ami               = local.locals-ami
  instance_type     = var.ec2_instance_type
  availability_zone = var.availability_zone.c

  tags = {
    Name = "Locals-Demo-${random_string.id.result}"
  }
}


/* }
  lifecycle {
    prevent_destroy = true */





resource "aws_instance" "ec2-demo2" {
  for_each = var.availability_zone

  ami               = "ami-022e1a32d3f742bd8"
  instance_type     = var.ec2_instance_type
  availability_zone = each.value

  tags = {
    Name = "DEMO-test-2 ${random_string.id.result}"
  }
}  