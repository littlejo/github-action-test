resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}

module "helm" {
  source   = "github.com/littlejo/terraform-helm-images-set-values"
  repo_url = "cilium/cilium"
}
