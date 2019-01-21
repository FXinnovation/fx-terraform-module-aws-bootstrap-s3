#####
# AWS
#####

variable "aws_access_key" {
  description = "Credentials: AWS access key."
  default     = "PLEASE SET THE AWS ACCESS KEY"
}

variable "aws_secret_key" {
  description = "Credentials: AWS secret key. Pass this a variable, never write password in the code."
  default     = "PLEASE SET THE AWS SECRET KEY. DO NOT WRITE YOUR SECRET IN THIS FILE."
}
