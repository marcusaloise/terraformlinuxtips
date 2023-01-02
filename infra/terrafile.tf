module "servers" {
    source = "./servers"
    servers = 2
}

output "ip_instacia" {
   value = module.servers.ip_instacia

}