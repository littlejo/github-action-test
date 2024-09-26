resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}

terraform { 
  cloud { 
    
    organization = "test-jli2" 

    workspaces { 
      name = "test-github-action" 
    } 
  } 
}
