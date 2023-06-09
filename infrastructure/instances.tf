resource "aws_instance" "minikube" {
  ami = "ami-022c9f1a24f813bf9"
  instance_type = "t2.micro"
  subnet_id = "subnet-a37af0e8"
  vpc_security_group_ids = [aws_security_group.demo.id]
  key_name = aws_key_pair.plotly-demo.key_name
  user_data = data.template_file.user_data.rendered
}
