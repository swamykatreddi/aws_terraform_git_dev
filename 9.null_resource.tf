resource "null_resource" "server1" {
  count = var.machine_count
  provisioner "file" {
    source      = "script.sh"
    destination = "/tmp/script.sh"
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("/users/katreddi/Desktop/ram_delete.pem")
      host        = element(aws_instance.webservers.*.public_ip, count.index)
    }
  }
  provisioner "remote-exec" {
    inline = [
      "sudo chmod 777 /tmp/script.sh",
      "sudo /tmp/script.sh",
      "sudo apt update",
      "sudo apt install -y tree",
      "sudo uptime",
      "sudo df -h"
    ]
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("/users/katreddi/Desktop/ram_delete.pem")
      host        = element(aws_instance.webservers.*.public_ip, count.index)
    }
  }
  provisioner "local-exec" {
    command = <<EOH
      ping ${element(aws_instance.webservers.*.public_ip, count.index)}
    EOH
  }
  #This resouce will be recreated if there is a change in Server tag version.
  triggers = {
    public-servers-tags = element(aws_instance.webservers.*.tags.Version, count.index)
  }
}

  