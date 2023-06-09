terraform {
  backend "s3" {
    bucket = "eilidhmae-plotly-demo"
    key = "api.tfstate"
    region = "us-west-2"
  }
}
