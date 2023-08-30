## resource group
variable "resource_group_create" {
  description = "Boolean flag which forces resource group is created and use it for all resources."
  type        = bool
}

variable "resource_group_name" {
  description = "The name of the resource group."
  default     = {}
}

variable "location" {
  description = "Specifies the supported Azure location where the resource should be created."
  default     = {}
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}