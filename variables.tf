variable "aws_region" {
  type    = string
  default = "us-west-1"
}

variable "az_location" {
  type = string
  default = "France Central"
}

variable "db_read_capacity" {
  type    = number
  default = 1
}

variable "db_write_capacity" {
  type    = number
  default = 1
}
