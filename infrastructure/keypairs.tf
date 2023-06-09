resource "aws_key_pair" "plotly-demo" {
  key_name = "plotly.demo"
  public_key = file("id_plotly_demo.pub")
}
