########
#GLOBAL#
########

variable "account" {
  default = {
    dev  = "898139803216"
    prod = "360706934225"
  }
}

variable "project" {
  default = "pulse-restart-lambda"
}

variable "ami" {
  default = {
    dev  = "ami-0efa8c021e336f101"
    prod = "ami-0614d91877764bbe6"
}
}

variable "vpc_security_group_ids" {
  default = {
    dev  = "sg-02fb7e267f6aba47a"
    prod = "sg-089d391edb78b92b4"
}
}


variable "subnet_id" {
  default = {
    dev  = "subnet-dd0fe480"
    prod = "subnet-aace99ce"
}
}

variable "tags" {
  default = {
    Product         = "XPTO"
    Team            = "Kidboo-Devops"
    Slack           = "kidboo"
    Email           = "kidboo"
    CriticalLevel   = 3
    ApplicationRole = ""
    CC              = "000000"
  }
}
