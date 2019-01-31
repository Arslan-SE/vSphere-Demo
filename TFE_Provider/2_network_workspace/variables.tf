# SETUP
variable "prefix" {}
variable "switchName" { }
variable "org" { }
variable "workspaceName" { }

# TFE 
variable "tfe_user_token" {}
variable "hostname" {}
variable "vcs_identifier" {}
variable "base_vcs_identifier" {}
variable "tfe_oauth_token" {}
variable "tfe_org_token" {}

# VSPHERE
variable "VSPHERE_USER" { }
variable "VSPHERE_PASSWORD" { }
variable "VSPHERE_SERVER" { }
variable "VSPHERE_ALLOW_UNVERIFIED_SSL" { }

variable "dc" { }
variable "cluster" { }
variable "host" { }
variable "datastore" { }
variable "vnet" { }
variable "vmtemplate" { }


