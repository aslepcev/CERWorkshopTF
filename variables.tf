variable "linode_token" {
  default = ""
  type = string
  sensitive   = true
}

variable "userid" {
  default = "cer1"
}

variable "specified_regions" {
  description = "List of regions to deploy instances"
  type        = list(string)
  default     = ["nl-ams", "fr-par", "de-fra-2", "us-mia"] # Define your desired regions here  
  #default     = ["nl-ams", "fr-par", "de-fra-2"] # Define your desired regions here
}
