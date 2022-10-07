output "public_ip" {
  description = "Public IP of linode instance"
  value       = linode_instance.terraform-web.ip_address
}
