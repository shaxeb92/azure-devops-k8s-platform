locals {
  rg_name = "rg-devops-portfolio"
  rg_location = "westeurope"
  acr_name = "acrdevops${random_string.suffix.result}"
}