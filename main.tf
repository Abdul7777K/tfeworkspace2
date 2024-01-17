data "tfe_outputs" "workspace_a_outputs" {
  organization = "your_organization_name"
  workspace    = "Workspace_A_Name"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = data.tfe_outputs.workspace_a_outputs.values["rg-tfe"]
}
