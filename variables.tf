# --- root/variables.tf ---

variable "aws_region" {
  default = "us-east-1"
}


variable "private_cidrs" {
   type = list(any)
   default = []
}
