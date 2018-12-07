###Generating random pet for the new hostname
resource "random_pet" "server" {
  length = "3"
  separator = "-"
}

###Output of the generated hostname
#output "name" {
#  value = "web-${random_pet.server.id}"
#}


###Generating hostname output with echo command  
#resource "null_resource" "helloWorld" {
#  provisioner "local-exec" {
#    command = "echo This generates name the following hostname  web-${random_pet.server.id}"
#  }
#}

output "name" {
  value = "web-${random_pet.server.id}"
}
