data "tfe_outputs" "workspace_a_outputs" {
  organization = "Demo-DDI"
  workspace    = "tfeworkspace1"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = data.tfe_outputs.workspace_a_outputs.values.rg-tfe
}
