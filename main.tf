###Generating random pet
resource "random_pet" "server" {
  length = "3"
  separator = "~"
}

###Test output
output "name" {
  value = "${random_pet.server.id}"
}


###Test hellow world
resource "null_resource" "helloWorld" {
  provisioner "local-exec" {
    command = "echo Hello Mr. ${random_pet.server.id}"
  }
}
