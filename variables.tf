# variables.tf
variable "project_name" {
  description = "A projekt neve, ami az erőforrások elnevezésében is megjelenik"
  type        = string
  default     = "online-marketplace"
}

variable "server_port" {
  description = "Az NodeJS szerver portja"
  type        = number
  default     = 5000
}

variable "client_port" {
  description = "Az Angular alkalmazás portja"
  type        = number
  default     = 8100
}

variable "db_port" {
  description = "A MongoDB portja"
  type        = number
  default     = 27017
}

variable "mysql_root_password" {
  description = "huha"
  type = string
  sensitive = true
}

variable "zabbix_mysql_password" {
  description = "zpw"
  type = string
  sensitive = true
}

variable "graylog_password_secret" {
  description = "Graylog pw secret"
  type = string
  sensitive = true
}

variable "graylog_root_password_sha2" {
  description = "Graylog jelszava"
  type = string
  sensitive = true
}
