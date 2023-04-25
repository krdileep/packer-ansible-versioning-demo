source "null" "example" {
  ssh_host     = "127.0.0.1"
  ssh_username = "ssh_username"
  ssh_password = "ssh-password"
}

build {
  sources = ["sources.null.example"]
  provisioner "ansible-local" {
    playbook_dir = "ansible"
    playbook_file  = "ansible/main.yml"
    galaxy_file = "ansible/requirements.yml"
    galaxy_roles_path = "roles"
  }
}
