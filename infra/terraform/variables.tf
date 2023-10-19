variable "region" {
  default = "us-east-1"
}

variable "tags" {
  type = map(string)
  default     = {
    "name" : "mixfast"
    "company" : "fiap"
  }
}

variable "name" {
  type = string
  default = "mixfast"
}

variable "vpc_id" {
  type = string
  default = "vpc-0a435ade90a13efbd"
}
variable "subnet_ids" {
  type = list
  default = ["subnet-0406a873952617bd6", "subnet-071f09ce851e88eee", "subnet-08f89a38c4c56076f"]
}
variable "from_port_ingress" {
  type = number
  default = 0
}
variable "to_port_ingress" {
  type = number
  default = 0
}
variable "protocol_ingress" {
  type = string
  default = "TCP"
}
variable "from_port_egress" {
  type = number
  default = 0
}
variable "to_port_egress" {
  type = number
  default = 0
}
variable "protocol_egress" {
  type = string
  default = "-1"
}