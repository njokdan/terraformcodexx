variable "project_id" {
  type = string
  description = "The Azure DevOps project ID"
}

variable "application1_repo" {
  type = string
  description = "The name of the repository containing the code for application 1"
}

variable "application2_repo" {
  type = string
  description = "The name of the repository containing the code for application 2"
}

variable "application3_repo" {
  type = string
  description = "The name of the repository containing the code for application 3"
}

variable "application4_repo" {
  type = string
  description = "The name of the repository containing the code for application 4"
}

variable "branch" {
  type = string
  description = "The branch of the repository to build and deploy"
  default = "main"
}

variable "personal_access_token" {
  type = string
  description = "The Azure DevOps personal access token used to authenticate with the Azure DevOps REST API"
}

variable "build_configuration" {
  type = string
  description = "The build configuration to use (e.g. Debug, Release)"
  default = "Release"
}

variable "web_app_name" {
  type = string
  description = "The name of the Azure Web App to deploy to"
}

variable "resource_group_name" {
  type = string
  description = "The name of the Azure Resource Group containing the Azure Web App"
}

variable "azure_subscription_id" {
  type = string
  description = "The ID of the Azure Subscription containing the Azure Web App"
}
