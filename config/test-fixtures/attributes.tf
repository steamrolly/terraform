provider "cloudstack" {
  api_url = "bla"
  api_key = "bla"
  secret_key = "bla"
}

resource "cloudstack_firewall" "test" {
  ipaddress = "192.168.0.1"

  rule {
    source_cidr = "10.0.0.0/8"
    protocol = "tcp"
    ports = ["80", "1000-2000"]
  }
}
