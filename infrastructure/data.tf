data "template_file" "user_data" {
  template		= file("templates/user_data.tpl")

  vars = {
    kubectl_version	= var.kubectl_version
  }
}
