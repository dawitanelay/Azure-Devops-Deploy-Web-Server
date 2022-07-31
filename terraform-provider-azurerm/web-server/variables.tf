variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default = "udacity"
}
variable "environment"{
  description = "The environment should be used for all resources in this example"
  default = "test-env"
}
variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default = "west europe"
}

variable "username"{
  default = "username"
}
variable "password"{
  default= "pWord@1234"
}

variable "server_names"{
  type = list
  default = ["Alan-Turing","Tim-Berners-Lee","Woz"]
}

variable "vm_count"{
  default = "3"
}

variable "PackerImage"{
  default = "/subscriptions/90a83934-1b3e-4b32-8146-c2760bbda23b/resourceGroups/Azuredevops/providers/Microsoft.Compute/images/PackerImage"

}
