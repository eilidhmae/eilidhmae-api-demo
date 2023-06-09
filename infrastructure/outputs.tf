output "public_ip" {
  value = aws_instance.minikube.public_ip
}

output "instance_id" {
  value = aws_instance.minikube.id
}
