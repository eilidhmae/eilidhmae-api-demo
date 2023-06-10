variable "kubectl_version" {
  default = "v1.27.2"
}

variable "instance_ami" {
  default = "ami-022c9f1a24f813bf9"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "subnet_id" {
  default = "subnet-a37af0e8"
}
