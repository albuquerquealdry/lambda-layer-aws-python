########
#GLOBAL#
########
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
variable "region" {
  default = {
    dev  = "us-east-1"
    prod = "sa-east-1"
  }
}
