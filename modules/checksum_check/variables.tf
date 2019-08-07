
variable "common_tags" {
  description = "Set of tags that are common for all resources"
  type        = map
}

variable "tag_name" {
  type    = string
  default = "tdr-ecs"
}

variable "tag_service" {
  type    = string
  default = "tdr-ecs"
}

variable "username" {
  type    = string
}

variable "environment" {
  description = "Environment resource is running in"
  type        = string
  default     = "dev"
}

variable "aws_region" {
  description = "The AWS region"
  default     = "eu-west-2"
}

variable "ecs_task_execution_role" {
  description = "Role arn for the ecsTaskExecutionRole"
  default     = "arn:aws:iam::247222723249:role/ecsTaskExecutionRole"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}

variable "checksum_check_image" {
  description = "The docker image to run file format checks against the files"
  default = "nationalarchives/tdr-checksum-check"
}

variable "checksum_check_name" {
  description = "The name of the file format check task"
  default = "tdr-checksum-check"
}

variable "app_name" {
  description = "Name of the hosted application"
  type        = string
  default     = "tdr-checksum-check"
}

variable "ecs_vpc" {
  description = "The vpc for the task"
}