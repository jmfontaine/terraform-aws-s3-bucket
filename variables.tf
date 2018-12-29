variable "acl" {
  default     = "private"
  description = "Canned ACL to apply"
  type        = "string"
}

variable "name" {
  description = "Name of the bucket"
  type        = "string"
}

variable "region" {
  default     = "us-east-1"
  description = "Region for the bucket"
  type        = "string"
}

variable "tags" {
  default     = {}
  description = "Tags to add to the bucket"
  type        = "map"
}

variable "versioning_enabled" {
  // Enabled by default since most objects will only have a single version and won't occur any cost
  // but it comes in handy when a file is mistakenly deleted.
  default     = true
  description = "Enable versionning?"
  type        = "string"
}
