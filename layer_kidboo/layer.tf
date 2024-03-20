resource "aws_lambda_layer_version" "kidboo_layer" {
  filename   = "files/kidboo_layer.zip"
  layer_name = "kidboo_layer"
  compatible_runtimes = ["python3.10"]
  compatible_architectures = ["x86_64"]
  description = "Descreve aqui"
}