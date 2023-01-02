variable "image_id" {
    default = "ami-12345678"
    type = string
    description = "Variavel que armazena o ID de uma image"

    validation {
      condition = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
      error_message = "A tua imagem tem que começar com o seguinte valor ami-"
   
    }

    sensitive = true
}

variable "servers" {
  
}
