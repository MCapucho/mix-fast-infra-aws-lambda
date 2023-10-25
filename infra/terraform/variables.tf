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
  default = ["subnet-069bde9a468e75c4a", "subnet-0ae7248a7d2f5f3f2", "subnet-06259e94cf81f6d06"]
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