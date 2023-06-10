resource "aws_instance" "minikube" {
  ami = var.instance_ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = [aws_security_group.demo.id]
  key_name = aws_key_pair.plotly-demo.key_name
  user_data = data.template_file.user_data.rendered
}
