# linode configuration details, check api/site for reminders.
resource "linode_instance" "terraform-web" {
  image           = "linode/debian11"
  label           = "student1"
  group           = "Terraform"
  region          = "eu-west"
  type            = "g6-nanode-1"
  authorized_keys = [var.authorized_keys]
  root_pass       = var.root_pass
}

# configure dns settings
resource "linode_domain" "domain" {
  type      = "master"
  domain    = var.domain
  soa_email = var.email
}

resource "linode_domain_record" "arecord" {
  domain_id   = linode_domain.domain.id
  record_type = "A"
  name        = ""
  target      = linode_instance.terraform-web.ip_address
  ttl_sec     = 30
}
