variable "subnet_id" {
  description = "subnet id"
  default = ""
}

variable "security_group_id" {
  description = "security group id"
  type = list(string)
  default = ""
}