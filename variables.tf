variable "project_name" {
  default = "roboshop"
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "common_tags" {
  default = {
     
    Enviromnent = "DEV"
    Project = "roboshop"
    terraform = "true"
  }
}

variable "public_subnet_cidr" {
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "private_subnet_cidr" {
  default = ["10.0.11.0/24","10.0.12.0/24"]
}

variable "database_subnet_cidr" {
  default = ["10.0.21.0/24","10.0.22.0/24"]
}

variable "database_route_table_tags" {
  default = {
    Name = "roboshop-database"
  }
}

variable "sg_ingress_rules" {
  default = [
    {
      from_port = 0
      to_port = 0
      protocol = "-1"
      description = "allowing all traffic from internet"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "instances" {
  default = {
    MonogoDB = "t3.medium"
    MySQL = "t3.medium"
    Redis ="t2.micro"
    RabbitMQ ="t2.micro"
    Cart ="t2.micro"
    catalogue ="t2.micro"
    user ="t2.micro"
    payment ="t2.micro"
    web ="t2.micro"
    shipping ="t2.micro"
  }
}

variable "zone_name" {
  default = "rahuldevops.cloud"
}