network_project_id           = "vpc-host"  //provide the host project id
project_id                   = "kamp"  //provide the service project id
region                       = "europe-west8"
cluster_name                 = "autopilot-private-kamp"
network_name                 = "shared-vpc-kamp-project"
subnet_name                  = "milan-subnet"
pods_range_name              = "pod-range"
svc_range_name               = "service-range"
# master_authorized_networks=[
#     {
#       cidr_block   = "10.20.0.0/24"
#       display_name = "VPC"
#     },
#   ]

service_account_roles  = [
  "roles/resourcemanager.projectIamAdmin",
  "roles/iam.serviceAccountUser",
  "roles/compute.viewer",
  "roles/container.developer"
]

bastion_members = [
    //"group:group@kineton.it",
    "user:user1@kineton.it",  //add the user name for bastion members
  ]

keys            = ["gke-key"]
keyring         = "gke-etcd01-ring"   //add the key ring id