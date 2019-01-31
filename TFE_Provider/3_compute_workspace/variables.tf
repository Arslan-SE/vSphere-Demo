# SETUP
variable "prefix" {}
variable "switchName" { }
variable "org" { }
variable "workspaceName" { }
variable "env" {}

variable "app" { }


# TFE 
variable "tfe_user_token" {}
variable "hostname" {}
variable "vcs_identifier" {}
variable "base_vcs_identifier" {}
variable "tfe_oauth_token" {}
variable "tfe_org_token" {}
variable "vmname" {}
variable "vmfolder" {}

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

variable vmname_prefix {}
variable "tag" { }
variable "tagCategory" { }

variable "vmdns" {

}
variable "vmgateway" { }
variable "ipaddress" {
//    type = "string"
  
 }
variable "ipv4submask" { }

variable "vmtemplate" { }
variable "ram_size" { }
variable "cpu_number" { }

variable "os_disk_size_gb" { }
variable "data_disk_size_gb" { }

 






