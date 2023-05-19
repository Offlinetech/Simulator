variable "ENABLED" {
  type      = string
}

variable "SERVER_ID" {
  type      = string
}

variable "FIREWALL_RULES" {
  type      = list(object({NAME = string, START_IP_ADRESS = string, END_IP_ADRESS = string}))
  sensitive = true
  default   = []
}