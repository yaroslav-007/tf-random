variable "jivotno" {
  type    = "string"
  default = "1"
}

resource "random_pet" "server" {
  length = "${var.jivotno}"
}

###Test output
output "name" {
  value = "${random_pet.server.id}"
}


###Test 
resource "null_resource" "helloWorld" {
  provisioner "local-exec" {
    command = "echo Hello Mr. ${random_pet.server.id}"
  }
}

