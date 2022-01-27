terraform {
  backend "pg" {
    conn_str = "postgres://tfusr:123qwe123@127.0.0.1/tfdb?sslmode=disable"
  }
}
