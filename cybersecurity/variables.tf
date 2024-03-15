variable "public_key" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2NRW86wv9A+VCbltIxdkX2ATFjB/2XNUSDPBF9rPuXxHAYE4IT1QY9GF4UMIUqBmeTCCVWjl77hzUFX9e2Ed/c+y4uPxGEDKS7crXrJ92MdO3neEEiu6cwTog80BWW9DwltAzD0ykCoEY6y/ZgcMMM8c/HNJUb7ZScXJrKdmF/gJS8gefviY2Twmia/mTF+XErjFYoAlWwYc0GE5Ye6JdC6LngEKMTt5ZU61AKvq/B7dFzoPT30FS7cR5qr2+5bTuIhUdqyMOTIvOlRLvlDOhTRp9/gUxN0MHwwvlxjWHfp85kaBbnKVA9G3z/qSccl3cV28qwt0fnEoqm9s4EoEn"
}

variable "avail_zone" {
  type = string
  default = "us-east-1a"
}

variable "vpc_ep_svc_name" {
  type = string
  default = "com.amazonaws.us-east-1.s3"
}

variable "config-NetworkMiner" {
  default = "NetworkMiner.desktop"
}

variable "config-45-allow-colord" {
  default = "45-allow-colord.sh"
}
