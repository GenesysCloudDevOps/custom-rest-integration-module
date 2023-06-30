variable "integration_name" {
    type        = string
    description = "The name of the Genesys Cloud integration."
}

variable "username" {
    type        = string
    description = "The username used for authentication."
}

variable "password" {
    sensitive   = true
    type        = string
    description = "The password used for authentication."
}
