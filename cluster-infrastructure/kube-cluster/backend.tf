terraform {
  backend "gcs" {
    bucket  = "cluster-bucket-silvia-task"
    prefix  = "tools/cluster-infrastructure"
    project = "carbon-trilogy-294216"
  }
}