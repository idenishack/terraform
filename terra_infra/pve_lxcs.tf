resource "proxmox_lxc" "fedora_35" {
  target_node  = "pve"
  #vmid         = 1011
  #hostname     = "f35-1"
  ostemplate   = "local:vztmpl/fedora-35-default_20211111_amd64.tar.xz"
  password     = "123qwe"
  description  = "fedora 35"
  cpulimit     = 2
  memory       = 2048
  swap         = 1024
  start        = true
  onboot       = true
  unprivileged = true

  rootfs {
    storage = "local-lvm"
    size    = "88G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "dhcp"
  }
}

resource "proxmox_lxc" "ubuntu_21" {
  target_node  = "pve"
  #vmid         = 1012
  #hostname     = "u21-1"
  ostemplate   = "local:vztmpl/ubuntu-21.04-standard_21.04-1_amd64.tar.gz"
  password     = "123qwe"
  description  = "ubuntu 21.04"
  cpulimit     = 2
  memory       = 2048
  swap         = 1024
  start        = true
  onboot       = true
  unprivileged = true

  rootfs {
    storage = "local-lvm"
    size    = "88G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "dhcp"
  }
}
