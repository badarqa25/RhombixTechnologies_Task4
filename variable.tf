variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "AMI for Ubuntu 24.04 or your preferred OS"
  default     = "ami-0360c520857e3138f" # Check if this is valid in your region
}

variable "instance_type" {
  default = "t2.micro"
}

variable "static_bucket_name" {
  description = "S3 bucket name for static site. Must be globally unique"
  default     = "my-static-site-bucket-badarqa"
}

