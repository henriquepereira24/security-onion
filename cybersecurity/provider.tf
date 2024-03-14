terraform {
  required_version = ">= 1.3.9"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.56.0"
    }
    cloudinit = {
      source = "hashicorp/cloudinit"
      version = "2.3.2"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  access_key = "ASIA6GBMFMUSANM4GB7N"
  secret_key = "PSv3yTN6wCZt2R1OBSw2/KxsQEO+nWK5uktqhRiQ"
  token = "FwoGZXIvYXdzEH4aDL5TnraGA4AtiNDoEiLBAeh4Nz3q2cg+mV2/sbHqW8ZSpGrZQbNM1RIGb12gNToo6Yk+hFfMqTgDuULtj7VAZ293Ugnm2NBmgHp0WhfKLDjTLfU/QVz4LdzTa1e+B2N/Sc6uNkmE8CruIBNDJYY30qZsYs4/306IDlN0/j6XTHaDUI4Zb8f49kr80NFf97oJoQ1L5GQ38Mv40UtMsZp0n58WujEKdtKj9ToAeJWZYg62WsQd/+5PKDYEhWAF21rKKp6xCBaz8QYe7+WgHFFrGFQogtnLrwYyLYLmjNR4Rg66anFLKS2pDUTxspcfGcsSWXgspawgvfFL4NwpuTxiIx884NUB8g=="

  #profile = "vocareum"
}

provider "cloudinit" {
}

data "template_cloudinit_config" "config-onion" {
  gzip = false
  base64_encode = false

  part {
    filename     = var.update-fstab
    content_type = "text/x-shellscript"
    content      = data.template_file.fstab.rendered
  }

  part {
    filename = var.cloud-config-onion
    content_type = "text/x-shellscript"
    content = file(var.cloud-config-onion)
  }

  part {
    filename = var.config-onion
    content_type = "text/x-shellscript"
    content = file(var.config-onion)
  }

  part {
    filename = var.config-netplan
    content_type = "text/x-shellscript"
    content = file(var.config-netplan)
  }

  part {
    filename = var.config-NetworkMiner
    content_type = "text/x-shellscript"
    content = file(var.config-NetworkMiner)
  }
  part {
    filename = var.config-45-allow-colord
    content_type = "text/plain"
    content = file(var.config-45-allow-colord)
  }
}

data "template_cloudinit_config" "config-kali" {
  gzip = false
  base64_encode = false

  part {
    filename     = var.kali-change-password
    content_type = "text/x-shellscript"
    content      = data.template_file.kali-password.rendered
  }

  part {
    filename = var.cloud-config-kali
    content_type = "text/x-shellscript"
    content = file(var.cloud-config-kali)
  }

  part {
    filename = var.config-kali
    content_type = "text/x-shellscript"
    content = file(var.config-kali)
  }

  part {
    filename = var.config-NetworkMiner
    content_type = "text/x-shellscript"
    content = file(var.config-NetworkMiner)
  }

  part {
    filename = var.config-45-allow-colord
    content_type = "text/plain"
    content = file(var.config-45-allow-colord)
  }
}

data "template_cloudinit_config" "config-sift" {
  gzip = false
  base64_encode = false

  part {
    filename     = var.sift-change-password
    content_type = "text/x-shellscript"
    content      = data.template_file.sift-password.rendered
  }

  part {
    filename = var.cloud-config-sift
    content_type = "text/x-shellscript"
    content = file(var.cloud-config-sift)
  }

  part {
    filename = var.config-sift
    content_type = "text/x-shellscript"
    content = file(var.config-sift)
  }

  part {
    filename = var.config-NetworkMiner
    content_type = "text/x-shellscript"
    content = file(var.config-NetworkMiner)
  }

  part {
    filename = var.config-45-allow-colord
    content_type = "text/plain"
    content = file(var.config-45-allow-colord)
  }
}

data "template_cloudinit_config" "config-remnux" {
  gzip = false
  base64_encode = false

  part {
    filename     = var.remnux-change-password
    content_type = "text/x-shellscript"
    content      = data.template_file.remnux-password.rendered
  }

  part {
    filename = var.cloud-config-remnux
    content_type = "text/x-shellscript"
    content = file(var.cloud-config-remnux)
  }

  part {
    filename = var.config-remnux
    content_type = "text/x-shellscript"
    content = file(var.config-remnux)
  }

  part {
    filename = var.config-NetworkMiner
    content_type = "text/x-shellscript"
    content = file(var.config-NetworkMiner)
  }

  part {
    filename = var.config-45-allow-colord
    content_type = "text/plain"
    content = file(var.config-45-allow-colord)
  }
}