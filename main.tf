###Generating random pet for the new hostname
resource "random_pet" "server" {
  length = "3"
  separator = "-"
}

###Output of the generated hostname
output "name" {
  value = "web-${random_pet.server.id}"
}


###Generating output with hostname
resource "null_resource" "helloWorld" {
  provisioner "local-exec" {
    command = "echo This generates name the following hostname  web-${random_pet.server.id}"
  }
}
