# Configure the Terraform Enterprise Provider
# networks Workspace
# TFE 
provider "tfe" {
  hostname = "${var.hostname}"
  token    = "${var.tfe_user_token}"
}
resource "tfe_variable" "hostname" {
  key      = "hostname"
  value    = "${var.hostname}"
  category = "terraform"
  workspace_id = "${tfe_workspace.networks.id}"
}
resource "tfe_variable" "prefix" {
  key      = "prefix"
  value    = "${var.prefix}"
  category = "terraform"
  workspace_id = "${tfe_workspace.networks.id}"
}

resource "tfe_variable" "org" {
  key      = "org"
  value    = "${var.org}"
  category = "terraform"
  workspace_id = "${tfe_workspace.networks.id}"
}

resource "tfe_variable" "workspaceName" {
  key      = "workspaceName"
  value    = "${var.workspaceName}"
  category = "terraform"
  workspace_id = "${tfe_workspace.networks.id}"
}
# WORKSPACES
resource "tfe_workspace" "networks" {
  
  name              = "${var.prefix}-networks"
  organization      = "${var.org}"
  working_directory = "1_vsphere/2_network"

  vcs_repo = {
    identifier     = "${var.base_vcs_identifier}"
    oauth_token_id = "${var.tfe_oauth_token}"
  }
}


# VSPHERE
resource "tfe_variable" "VSPHERE_USER" {
  key          = "VSPHERE_USER"
  value        = "${var.VSPHERE_USER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.networks.id}"
}
resource "tfe_variable" "VSPHERE_PASSWORD" {
  key          = "VSPHERE_PASSWORD"
  value        = "${var.VSPHERE_PASSWORD}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.networks.id}"
}
resource "tfe_variable" "VSPHERE_SERVER" {
  key          = "VSPHERE_SERVER"
  value        = "${var.VSPHERE_SERVER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.networks.id}"
}
resource "tfe_variable" "VSPHERE_ALLOW_UNVERIFIED_SSL" {
  key          = "VSPHERE_ALLOW_UNVERIFIED_SSL"
  value        = "${var.VSPHERE_ALLOW_UNVERIFIED_SSL}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.networks.id}"
}
resource "tfe_variable" "confirm_destroy" {
  key          = "CONFIRM_DESTROY"
  value        = "1"
  category     = "env"
  workspace_id = "${tfe_workspace.networks.id}"
}

resource "tfe_variable" "dc" {
  key      = "dc"
  value    = "${var.dc}"
  category = "terraform"
  workspace_id = "${tfe_workspace.networks.id}"
}

resource "tfe_variable" "cluster" {
  key      = "cluster"
  value    = "${var.cluster}"
  category = "terraform"
  workspace_id = "${tfe_workspace.networks.id}"
}

resource "tfe_variable" "host" {
  key      = "host"
  value    = "${var.host}"
  category = "terraform"
  workspace_id = "${tfe_workspace.networks.id}"
}

resource "tfe_variable" "datastore" {
  key      = "datastore"
  value    = "${var.datastore}"
  category = "terraform"
  workspace_id = "${tfe_workspace.networks.id}"
}

resource "tfe_variable" "vmtemplate" {
  key      = "vmtemplate"
  value    = "${var.vmtemplate}"
  category = "terraform"
  workspace_id = "${tfe_workspace.networks.id}"
}

resource "tfe_variable" "vnet" {
  key      = "vnet"
  value    = "${var.vnet}"
  category = "terraform"
  workspace_id = "${tfe_workspace.networks.id}"
}

resource "tfe_variable" "switchName" {
  key      = "switchName"
  value    = "${var.vnet}"
  category = "terraform"
  workspace_id = "${tfe_workspace.networks.id}"
}