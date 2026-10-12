variable "project" {
  default = "Roboshop"
}

variable "environment" {
  default = "dev"
}

variable "sg_names" {
  type = list
  default = [
    #Database
    "mongodb", "redis", "mysql", "rabbitmq",

    #backend
    "catalogue", "user", "cart", "payment", "shipping",

    #backend ALB
    "backend_alb",

    #frontend
    "frontend",

    #frontend ALB
    "frontend_alb",
    #bastion
    "bastion"

  ]
}