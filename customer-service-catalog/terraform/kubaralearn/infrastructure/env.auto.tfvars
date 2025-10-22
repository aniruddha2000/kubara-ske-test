### DNS
contact_email = "aniruddha.basak@stackit.cloud"
dns_name      = "kubaralearn-dev.stackit.run"

### Global
project_id = "05915afc-6674-4daf-b488-243cda9a5b71"
stage      = "dev"
name       = "kubaralearn"



### Secret Manager / Vault Users
users = [
  {
    description   = "vault-user-rw"
    write_enabled = true
  },
  {
    description   = "vault-user-ro"
    write_enabled = false
  }
]

### Kubernetes

### SKE
kubernetes_version_min = "1.33.5"
node_pools = [
  {
    availability_zones = ["eu01-2"]
    machine_type       = "c2i.8"
    maximum            = 4
    minimum            = 2
    name               = "pool-infra"
    os_version_min     = "4230.2.2"
    labels = {
      "project" = "public-cloud-demo"
      "role"    = "infra"
    }
    taints = []
  }
]


