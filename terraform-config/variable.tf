variable "eastus" {
  type      = string
  default = "eastus"
 
  validation {
    condition     = contains (["eastus", "westus"] , var.eastus)
    error_message = "shi kr le bhai location"
  }
}