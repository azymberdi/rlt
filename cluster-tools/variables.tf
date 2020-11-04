
variable "credentials" {
  default = "service-account.json"
}

variable "deployment_environment" {
  default = "tools"
  description = "Namespace of the deployment <It will be created>"
}

variable "cluster_tools" {
  type = "map"
  default = {
    ip_ranges = "10.16.0.27/8, 50.194.68.229/32, 50.194.68.230/32, 50.194.68.237/32"
  }
}

variable "tiller_namespace" {
  default     = "kube-system"
  description = "Tiller by default will deploy to kube-system"
}


variable "email" {
  default = "codingtest.rs@gmail.com"
}

variable "google_project_id" {
  default = "carbon-trilogy-294216"
}

variable "jenkins" {
  type = "map"

  default = {
    admin_user             = "admin"
    admin_password         = "password"
    jenkins_auth_client_id = "id"
    jenkins_auth_secret    = "secret"
    git_token              = "awdiahwd12ehhaiodd"
  }
}

variable "grafana" {
  type = "map"

  default = {
    grafana-version  = "6.0.1"
    grafana_username = "admin"
    grafana_password = "password"
    grafana-name     = "grafana"
    smtp_host        = "smtp.gmail.com:587"
    smtp_username    = "smtp-user"
    smtp_password    = "password"
    slack_url        = ""
    github_organization = "k8s-org"
  }
}

variable "kube_dashboard" {
  type = "map"
  default {
    github_auth_client_id = "id"
    github_auth_secret    = "secret"
    github_organization   = "k8s-org"
    proxy_cookie_secret   = "exampleproxysecret"
  }
}

variable "google_domain_name" {
  default = "silviarotari.com"
  description = "Please change to your domain name"
}

variable "google_bucket_name" {
  description = "cluster-bucket-silvia-task"
}

variable "deployment_name" {
  default = "cluster_tools"
}

variable "secret_config" {
  type = "map"

  default = {
    user_data = "admin:admin"
  }
  description = "- (Required) Variable is looking for <docker_endpoint> and  <docker_user_data> with following format (username:password)"
}

variable "namespaces" {
  type = "list"
  default = [
    "production",
    "stage"
  
  ]
  description = "- (Required) list of all namespaces for codingtest-cluster"
}

variable "show_passwords" {
  default = "false"
  description = "- (Optional) if you put <true> output will show passwords"
}

variable "skip_github_organization" {
   default = "true"
   description = "- (Optional) if you put <true> output will enable organization true."
}

variable "grafana_dashboard_filenames" {
  default = [
    "cert-manager-dashboard-tpl",
    "ingress-controller-tpl",
    "jenkins-dashboard-tpl",
    "kubernetes-dashboard-tpl",
    "external-dns-dashboard-tpl",
    ]
}

variable "sonarqube" {
  type = "map"
  default = {
    admin_password            = "admin"
    username                  = "admin"
    sonarqube_auth_client_id  = "id"
    sonarqube_auth_secret     = "secret"
  }
}
