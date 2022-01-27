#  Create a Repository for Development

resource "github_repository" "Development" {
  name        = "Dev"
  description = "Development environment"
  
  visibility = "public"

}

#  Create a Repository for Testing

resource "github_repository" "Testing" {
  name        = "Test"
  description = "Testing environment"
  
  visibility = "public" 

}

#  Create a Repository for Staging

resource "github_repository" "Staging" {
  name        = "Stage"
  description = "Staging environment"
  
  visibility = "public"

}

#  Create a Repository for Production

resource "github_repository" "Production" {
  name        = "Prod"
  description = "Production environment"
  
  visibility = "public"

}
