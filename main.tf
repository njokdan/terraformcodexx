provider "azuredevops" {
  version = "0.8.0"
  organization_url = "https://dev.azure.com/oluseunismaila/"
  personal_access_token = "oer6rwtdxl7mkhet7gtzh4qswlbhru4namscuejifldkb2yx77cq"
}

module "app1" {
  source = "./module"
  repository_name = "dotnetapp1"
  project_name = "Daniel"
  app_name = "dotnetcoresample"
  environment = "production"
  web_app_name = "webappxx1"
}

module "app2" {
  source = "./module"
  repository_name = "dotnetapp2"
  project_name = "Daniel"
  app_name = "dotnetcoresample"
  environment = "production"
  web_app_name = "webappxx2"
}

module "app3" {
  source = "./module"
  repository_name = "dotnetapp3"
  project_name = "Daniel"
  app_name = "dotnetcoresample"
  environment = "production"
  web_app_name = "webappxx3"
}

module "app4" {
  source = "./module"
  repository_name = "dotnetapp4"
  project_name = "Daniel"
  app_name = "dotnetcoresample"
  environment = "production"
  web_app_name = "webappxx4"
}
