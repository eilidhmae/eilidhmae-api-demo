plan:
	terraform plan -out current.tfplan

apply:
	terraform apply current.tfplan

destroy:
	terraform apply -destroy -auto-approve -target aws_instance.minikube

rebuild: destroy plan apply
