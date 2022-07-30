variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default = "udacity"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default = "west europe"
}

variable "username"{
  default = "username"
}
variable "password"{
  default= "password"
}

variable "server_names"{
  type = list
  default = ["Alan Turing","Tim Berners-Lee","Woz"]
}

variable "vm_count"{
  default = "3"
}

variable "PackerImage"{
  default = "/subscriptions/59ce2236-a139-4c59-91d8-bedbf055dbb9/resourceGroups/udacity-rg/providers/Microsoft.Compute/images/PackerImage"
}
