resource "aws_instance" "mgr_ec2" {
  ami = var.ami
  instance_type = var.instance_type
  iam_instance_profile = aws_iam_instance_profile.mgr_instance_profile
  security_groups = [aws_security_group.mgr_sg.id]
   tags = {
    Name = "${var.prefix}_ec2"
  }
}

resource "aws_security_group" "mgr_sg" {
  name = "${var.prefix}_securityGroup"
  vpc_id = data.aws_vpc.default.id
  description = "Allow http from my computer only"

  ingress {
    from_port = 80
    to_port = 80
    protocol = tcp
    cidr_blocks = [ var.my_ip ] #ip address of laptop
  }

   egress {
    description = "Outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.prefix}_sg"
  }
}

data "aws_vpc" "default" {
  default = true
}

data "aws_iam_role" "mgr_iam" {
  name = "ec2_role_task1"
}

resource "aws_iam_instance_profile" "mgr_instance_profile" {
  name = "ec2-profile_existing-role"
  role = data.aws_iam_role.mgr_iam.name
}