## patrician.gold

### domain

resource "digitalocean_domain" "patrician" {
  name = "patrician.gold"
}

### records

resource "digitalocean_record" "patrician_root" {
  domain  = "${digitalocean_domain.patrician.name}"
  type = "A"
  value = "${data.digitalocean_droplet.verdun_node.ipv4_address}"
  name    = "@"
}

resource "digitalocean_record" "patrician_wildcard" {
  domain  = "${digitalocean_domain.patrician.name}"
  type = "A"
  value = "${data.digitalocean_droplet.verdun_node.ipv4_address}"
  name    = "*"
}

## hefeteig.io

### domain

resource "digitalocean_domain" "hefeteig" {
  name = "hefeteig.io"
}

### records

resource "digitalocean_record" "hefeteig_root" {
  domain  = "${digitalocean_domain.hefeteig.name}"
  type = "A"
  value = "${data.digitalocean_droplet.verdun_node.ipv4_address}"
  name    = "@"
}
