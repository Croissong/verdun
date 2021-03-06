## patrician.cloud

### domain

resource "digitalocean_domain" "patrician" {
  name = "patrician.cloud"
}

### records

resource "digitalocean_record" "patrician_root" {
  domain = digitalocean_domain.patrician.name
  type   = "A"
  value  = data.digitalocean_droplet.verdun_node.ipv4_address
  ttl    = 60
  name   = "@"
}

resource "digitalocean_record" "patrician_wildcard" {
  domain = digitalocean_domain.patrician.name
  type   = "A"
  value  = data.digitalocean_droplet.verdun_node.ipv4_address
  ttl    = 60
  name   = "*"
}

resource "digitalocean_record" "keybase_verification" {
  domain = digitalocean_domain.patrician.name
  type   = "TXT"
  value  = "keybase-site-verification=eavZk9dmvoplxpFKylQ7cJm4SScKfjNV6FysCtLpyI4"
  name   = "@"
}

resource "digitalocean_record" "uptimerobot_status_page" {
  domain = digitalocean_domain.patrician.name
  type   = "CNAME"
  value  = "stats.uptimerobot.com."
  name   = "status"
}

## hefeteig.io

### domain

resource "digitalocean_domain" "hefeteig" {
  name = "hefeteig.io"
}

### records

resource "digitalocean_record" "hefeteig_root" {
  domain = digitalocean_domain.hefeteig.name
  type   = "A"
  value  = data.digitalocean_droplet.verdun_node.ipv4_address
  ttl    = 60
  name   = "@"
}

resource "digitalocean_record" "hefeteig_wildcard" {
  domain = digitalocean_domain.hefeteig.name
  type   = "A"
  value  = data.digitalocean_droplet.verdun_node.ipv4_address
  ttl    = 60
  name   = "*"
}
