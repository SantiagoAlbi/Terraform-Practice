variable "virginia_cidr" {
    description = "CIDR Virginia"
    type = string
    #sensitive = false
}

#variable "public_subnet" {
#description = "CIDR public subnet"
#type = string

#}

#variable "private_subnet" {
#description = "CIDR private subnet"
#type = string
#}

variable "subnets" {
    description = "Lista de subnets"
    type = list(string)  
}

variable "tags" {
    description = "tags del proyect"
    type = map(string)
  
}

variable "sg_ingress_cidr" {
  description = "CIDR for ingress traffic"
  type = string
}

variable "ec2_specs" {
  description = "Parametros de la Instancia"
  type = map(string)
}