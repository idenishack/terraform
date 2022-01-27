terraform {
  backend "pg" {
    conn_str = "postgres://tfusr:123qwe123@192.168.1.147/tfdb"
  }
}
