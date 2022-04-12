variable "publisher_name" {
  type        = string
  default     = "Mar"
  description = "publisher name"
}

variable "publisher_email" {
  type        = string
  default     = "company@terraform.io"
  description = "Publisher email"
}

variable "sku" {
  type        = string
  default     = "Developer_1"
  description = "SKU"
}

variable "revision" {
  type        = string
  default     = "1"
  description = "API revision"
}

variable "display_name" {
  type        = string
  default     = "Test API"
  description = "API display name"
}

variable "path" {
  type        = string
  default     = "/mbaoma"
  description = "Endpoint path"
}

variable "protocols" {
  type        = list
  default     = ["https", "http"]
  description = "API security protocols"
}

variable "service_url" {
  type        = string
  default     = "https://linktr.ee"
  description = "URL"
}
