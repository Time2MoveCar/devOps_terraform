
////////////////////////
// Global Variables
////////////////////////
variable "account_id" {
  type = map(string)
  default = {
    dev = ""
  }
}

variable "AWS_REGION" {
  default = "ap-northeast-2"
}


variable "EC2_TYPE" {
  type = map(string)
  default = {
    "t2micro" = "t2.micro"
    "t3micro" = "t3.micro"
    "t2small" = "t2.small"
    "t2nano"  = "t2.nano"
  }
}


variable "AWS_AMI_LIST" {
  type = map(string)
  default = {
    "ubuntu_20_04_x86" = "ami-04341a215040f91bb"
    "ubuntu_20_04_arm" = "ami-0ac62099928d25fec"
    "ubuntu_22_04_x86" = "ami-0c9c942bd7bf113a2"
    "ubuntu_22_04_arm" = "ami-00fdfe418c69b624a"
    "NAT_INSTANCE"     = "ami-08b4e1d59ace22a4c"
  }
}


variable "remote_state" {
 

  default = {
  


  }
}