variable "name" {}
variable "account" {}
variable "private_subnet_ids" {}
variable "public_subnet_ids" {}
variable "vpc_id" {}
variable "zone" {}
variable "ec2_instances" {
  description = "EC2 instances from the EC2 module"
}