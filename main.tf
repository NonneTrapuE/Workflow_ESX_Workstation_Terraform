terraform {
 required_version = ">= 0.13"
 required_providers {
    esxi = {
      source = "registry.terraform.io/josenk/esxi"
      #
      # For more information, see the provider source documentation:
      # https://github.com/josenk/terraform-provider-esxi
      # https://registry.terraform.io/providers/josenk/esxi
  }
 }
}

provider "esxi" {
  #Hostname ou IP
  esxi_hostname      = ""
  esxi_hostport      = "22"
  esxi_hostssl       = "443"
  #Username et mot de passe (privilégier le compte le plus élevé)
  esxi_username      = ""
  esxi_password      = ""
}

resource "esxi_guest" "vmtest" {
  #Nom de la VM
  guest_name         = ""
  #Nom du datastore sur ESXi
  disk_store         = ""
  #Quantité de ram (1024, 2048, etc...)
  memsize	     = ""
  #Quantité de CPU
  numvcpus      = "" 
	
  #  Specify an existing guest to clone, an ovf source, or neither to build a bare-metal guest vm.
  #
  #clone_from_vm      = "Templates/centos7"
  #URL du fichier ovf
  ovf_source        = ""

  network_interfaces {
    virtual_network = "VM Network"
  }

  #Provisionning
  #connection {
	#	type	=	"ssh"
	#	user	=	var.ssh_user
	#	host	=	var.ssh_host
	#	private_key = file(var.ssh_key)
  # }
  #  provisioner "remote-exec" {
	#	inline= [
	 # Provisionning with linux commands
	 #]
}

