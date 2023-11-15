## Ec2 instance 

resource "aws_instance" "splunk-instance" {
  ami                         = "ami-0bb4c991fa89d4b9b"
  vpc_security_group_ids      = [aws_security_group.splunk-sg.id]
  instance_type               = "t2.small"
  key_name                    = "ec2-key"
  subnet_id                   = aws_subnet.public_subnet1.id
  user_data                   = file("user.sh")
  associate_public_ip_address = true

  root_block_device {
    volume_size           = 25
    volume_type           = "gp2"
    delete_on_termination = true
    tags = {
      name = "splunk_instance"
      env  = "Dev"
    }



  }
}