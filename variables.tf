variable "ec2_instance_type" {
  description = "The type of the instance"
  /* default     = "t3.micro" */

}

variable "availability_zone" {
  description = "The availabilty_zones i want create ec2 for"
  type        = map(string)
  default = {
    "a" = "us-east-1a"
    "b" = "us-east-1b"
    "c" = "us-east-1c"

  }

}