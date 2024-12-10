# resource "linode_firewall" "lb-fw" {
#   label = "lb-pub"

# inbound {
#     label    = "allow-http"
#     action   = "ACCEPT"
#     protocol = "TCP"
#     ports    = "80"
#     ipv4     = [
#         "149.143.67.97/32",
#         "5.30.181.158/32",
#         "2.16.0.0/13",
#         "23.0.0.0/12",
#         "23.192.0.0/11",
#         "23.32.0.0/11",
#         "23.64.0.0/14",
#         "23.72.0.0/13",
#         "69.192.0.0/16",
#         "72.246.0.0/15",
#         "88.221.0.0/16",
#         "92.122.0.0/15",
#         "95.100.0.0/15",
#         "96.16.0.0/15",
#         "96.6.0.0/15",
#         "104.64.0.0/10",
#         "118.214.0.0/16",
#         "173.222.0.0/15",
#         "184.24.0.0/13",
#         "184.50.0.0/15",
#         "184.84.0.0/14"
#     ]
# }


#   inbound {
#     label    = "allow-https"
#     action   = "ACCEPT"
#     protocol = "TCP"
#     ports    = "443"
#     ipv4     = [
#         "149.143.67.97/32",
#         "5.30.181.158/32",
#         "2.16.0.0/13",
#         "23.0.0.0/12",
#         "23.192.0.0/11",
#         "23.32.0.0/11",
#         "23.64.0.0/14",
#         "23.72.0.0/13",
#         "69.192.0.0/16",
#         "72.246.0.0/15",
#         "88.221.0.0/16",
#         "92.122.0.0/15",
#         "95.100.0.0/15",
#         "96.16.0.0/15",
#         "96.6.0.0/15",
#         "104.64.0.0/10",
#         "118.214.0.0/16",
#         "173.222.0.0/15",
#         "184.24.0.0/13",
#         "184.50.0.0/15",
#         "184.84.0.0/14"
#     ]
#   }

#   inbound {
#     label    = "allow-https-intraserver"
#     action   = "ACCEPT"
#     protocol = "TCP"
#     ports    = "443"
#     ipv4 = [for ip in linode_instance.k3s-ai[*].ip_address : "${ip}/32"]

#   }

#     inbound {
#     label    = "allow-ssh"
#     action   = "ACCEPT"
#     protocol = "TCP"
#     ports    = "22"
#     ipv4     = ["149.143.67.97/32"]
#   }

#   inbound_policy = "DROP"
#   outbound_policy = "ACCEPT"

#   # Use tolist to convert tuple to a list of numeric IDs
#   linodes = tolist(linode_instance.k3s-ai[*].id)
# }
