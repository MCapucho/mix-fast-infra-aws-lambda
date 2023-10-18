variable "region" {
  default = "us-east-2"
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

variable "subnet_ids" {
  type = list
  default = ["subnet-0f1de9542af720987", "subnet-074e436514027d8b1", "subnet-00490b577f79a6477"]
}

variable "security_group" {
  type = string
  default = "sg-03b0af3712739ee22"
}