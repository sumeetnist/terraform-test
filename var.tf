variable "access_key" {
  default = "AKIAW552IMTLYA7S32C6"

}
variable "secret_key" {
  default = "oVPiZy3rfF27UdjAM3zec+B9755a/7rw8K3fwgDP"

}
variable "region" {
  default = "ap-south-1"

}

variable "vpc_cidr" {
  type = string
  default = "10.160.9.0/24"
}

variable "subnet_azs" {
  default = ["ap-south-1a", "ap-south-1b"]
}
