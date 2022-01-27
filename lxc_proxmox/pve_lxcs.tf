resource "proxmox_lxc" "almalinux85" {
  target_node  = "pve"
  vmid         = 1003
  hostname     = "almalinux8"
  ostemplate   = "local:vztmpl/almalinux-8-default_20210928_amd64.tar.xz"
  password     = "123qwe"
  unprivileged = true
  description  = "alma linux 8"
  cpulimit     = 2
  memory       = 2048
  swap         = 1024
  start        = true

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

resource "proxmox_lxc" "f35tf" {
  target_node  = "pve"
  vmid         = 1004
  hostname     = "fedoralinuxtf"
  ostemplate   = "local:vztmpl/fedora-35-default_20211111_amd64.tar.xz"
  password     = "123qwe"
  unprivileged = true
  description  = "fedora linux 35"
  cpulimit     = 2
  memory       = 2048
  swap         = 1024
  start        = true

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

resource "proxmox_lxc" "rockylinux85" {
  target_node  = "pve"
  vmid         = 1005
  hostname     = "rockylinux"
  ostemplate   = "local:vztmpl/rockylinux-8-default_20210929_amd64.tar.xz"
  password     = "123qwe"
  unprivileged = true
  description  = "RockyLinux 8"
  cpulimit     = 2
  memory       = 2048
  swap         = 1024
  start        = true

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
