variable "sg_name" {

    type = string
    default = "singapore"
  
}

variable "sg_description" {
    type = string
    default = "beautiful place in the world"
  
}

variable "ingress" {
    type = number
    default = 0
  
}

variable "cidr_blocks" {
    type = list()
    default = ["0.0.0.0/0"]
  
}
