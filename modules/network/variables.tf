variable "common_tags" {
  description = "Set of tags that are common for all resources"
  type        = map(string)
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "username" {
  type = string
}

variable "app_name" {
  type = string
}


