locals {

  source_file_path   = "teste.txt"
  path_documents_txt = "documents/txt"
  path_https         = "https://"

  commons_tags_bucket = {
    Name        = "My bucket ${random_pet.bucket.id}"
    Environment = "env: ${var.environment}"
    managed-by  = "Terraform"
    owner       = "Leandro Leite"
    created-at  = "2025-09-14"
  }
}