resource "kubernetes_secret" "cluster_tools_config" {
  metadata {
    name = "cluster-tools-config"
    namespace = "tools"

    labels = {
      "jenkins.io/credentials-type" = "secretFile"
      
    }

    annotations = {
      "jenkins.io/credentials-description" = "cluster tools config"
    }
  }
  
  data = {
    filename = "cluster_tools.tfvars"
    "data" =  "${file("cluster_tools.tfvars")}"
  }
}
