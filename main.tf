variable "myvar" {
  default        = 1
  description = "The id of the variable"
}

resource "random_pet" "var" {
    length = var.myvar
}

output "var" {
    value = random_pet.var.length
}