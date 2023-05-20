variable access_key {}
variable secret_key {}
variable region {}
variable vpc_cidr_block {
  type        = string
  default     = ""
  description = "vpc cidr block"
}
variable subnet_cidr_block {
  type        = string
  default     = ""
  description = "vpc cidr block"
}
variable subnet_avail_zone {}
variable env_prefix {}