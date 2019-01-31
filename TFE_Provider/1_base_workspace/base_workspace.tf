# Configure the Terraform Enterprise Provider
# Base Workspace
# TFE 
provider "tfe" {
  hostname = "${var.hostname}"
  token    = "${var.tfe_user_token}"
}
resource "tfe_workspace" "base" {
  name              = "${var.prefix}-base"
  organization      = "${var.org}"
  working_directory = "1_vsphere/1_base"

  vcs_repo = {
    identifier     = "${var.base_vcs_identifier}"
    oauth_token_id = "${var.tfe_oauth_token}"
  }
}
resource "tfe_variable" "hostname" {
  key      = "hostname"
  value    = "${var.hostname}"
  category = "terraform"
  workspace_id = "${tfe_workspace.base.id}"
}
resource "tfe_variable" "prefix" {
  key      = "prefix"
  value    = "${var.prefix}"
  category = "terraform"
  workspace_id = "${tfe_workspace.base.id}"
}

# VSPHERE
resource "tfe_variable" "VSPHERE_USER" {
  key          = "VSPHERE_USER"
  value        = "${var.VSPHERE_USER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.base.id}"
}
resource "tfe_variable" "VSPHERE_PASSWORD" {
  key          = "VSPHERE_PASSWORD"
  value        = "${var.VSPHERE_PASSWORD}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.base.id}"
}
resource "tfe_variable" "VSPHERE_SERVER" {
  key          = "VSPHERE_SERVER"
  value        = "${var.VSPHERE_SERVER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.base.id}"
}
resource "tfe_variable" "VSPHERE_ALLOW_UNVERIFIED_SSL" {
  key          = "VSPHERE_ALLOW_UNVERIFIED_SSL"
  value        = "${var.VSPHERE_ALLOW_UNVERIFIED_SSL}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.base.id}"
}
resource "tfe_variable" "confirm_destroy" {
  key          = "CONFIRM_DESTROY"
  value        = "1"
  category     = "env"
  workspace_id = "${tfe_workspace.base.id}"
}

resource "tfe_variable" "dc" {
  key      = "dc"
  value    = "${var.dc}"
  category = "terraform"
  workspace_id = "${tfe_workspace.base.id}"
}

resource "tfe_variable" "cluster" {
  key      = "cluster"
  value    = "${var.cluster}"
  category = "terraform"
  workspace_id = "${tfe_workspace.base.id}"
}

resource "tfe_variable" "host" {
  key      = "host"
  value    = "${var.host}"
  category = "terraform"
  workspace_id = "${tfe_workspace.base.id}"
}

resource "tfe_variable" "datastore" {
  key      = "datastore"
  value    = "${var.datastore}"
  category = "terraform"
  workspace_id = "${tfe_workspace.base.id}"
}

resource "tfe_variable" "vmtemplate" {
  key      = "vmtemplate"
  value    = "${var.vmtemplate}"
  category = "terraform"
  workspace_id = "${tfe_workspace.base.id}"
}

resource "tfe_variable" "vnet" {
  key      = "vnet"
  value    = "${var.vnet}"
  category = "terraform"
  workspace_id = "${tfe_workspace.base.id}"
}

resource "tfe_variable" "attDemoValue" {
  key      = "attDemoValue"
  value    = "${var.attDemoValue}"
  category = "terraform"
  workspace_id = "${tfe_workspace.base.id}"
}

resource "tfe_variable" "catEnvironment" {
  key      = "catEnvironment"
  value    = "${var.catEnvironment}"
  category = "terraform"
  workspace_id = "${tfe_workspace.base.id}"
}