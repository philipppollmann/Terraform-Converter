variable "context" {
  type = string
}

variable "usecase" {
  type = string
}

variable "resource_group_location" {
    type = string
}

variable "subnet_id" {
  type = string
}

variable "allow_ip_list" {
  type = list(string)
  default = []
}