# resource "azuredevops_build_definition" "build_and_deploy" {
#   name           = var.pipeline_name
#   repository_id  = azuredevops_git_repository.repository.id
#   project_id     = var.project_id
#   pipeline       = template_file("${path.module}/build_and_deploy_pipeline.yml", {
#     appName = var.pipeline_variables["appName"],
#     environment = var.pipeline_variables["environment"],
#     webAppName = var.pipeline_variables["webAppName"],
#   })
# }

# resource "azuredevops_git_repository" "repository" {
#   name      = var.repository_name
#   project_id = var.project_id
# }

# data "azuredevops_project" "project" {
#   name = var.project_name
# }

#####=====================
module "azure_devops_pipeline" {
  source = "microsoft/pipelines/azure-pipelines#2.0.0-preview"
  pipeline_name = "${var.app_name}-${var.environment}"
  pipeline_yaml = file("build_and_deploy_pipeline.yml")
  repository_name = var.repository_name
  project_name = var.project_name
  triggers = [
    {
      branch = "main"
    }
  ]
}

