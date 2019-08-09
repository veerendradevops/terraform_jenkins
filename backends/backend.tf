
backend "s3" {
 encrypt = true
 bucket = "backendvk"
 dynamodb_table = "tfdynamo-state-lock"
 region = "us-east-1"
 key = "terraform.tfstate"
 }
}