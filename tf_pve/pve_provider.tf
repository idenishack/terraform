terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "2.9.3"
    }
  }
}

provider "proxmox" {
  pm_api_url      = "https://192.168.1.124:8006/api2/json"
  pm_user         = "terraform-prov-usr@pve"
  pm_password     = "123qwe123"
  pm_tls_insecure = true
  pm_log_enable   = true
  pm_log_file     = "terraform-plugin-proxmox.log"
  pm_debug        = true
  pm_log_levels = {
    _default    = "debug"
    _capturelog = ""
  }
}
