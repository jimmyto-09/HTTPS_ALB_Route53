resource "aws_instance" "ec1" {
  ami           = "ami-08f9a9c699d2ab3f9"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.private1.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]



   user_data = <<-EOF
              #!/bin/bash
              dnf update -y
              dnf install -y nginx
              systemctl enable nginx
              systemctl start nginx
              echo "<h1> Primera prueba de Pàgina  WEB HTTPS Jimmyto Terrafoom + AWS </h1>" > /usr/share/nginx/html/index.html
              EOF

  tags = {
    Name = "ec2"
  }
}


resource "aws_instance" "ec2" {
  ami           = "ami-08f9a9c699d2ab3f9"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.private2.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]


 user_data = <<-EOF
              #!/bin/bash
              dnf update -y
              dnf install -y nginx
              systemctl enable nginx
              systemctl start nginx
              echo "<h1> BALANCEADOR DE CARGA EN 2 EC2</h1>" > /usr/share/nginx/html/index.html
              EOF
  tags = {
    Name = "ec2"
  }
}