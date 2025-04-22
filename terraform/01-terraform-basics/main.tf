provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "my_s3_bucket"{
    bucket = "my-s3-bucket-in28minutes-wwun-001"
}

resource "aws_s3_bucket_versioning" "versioning_my_s3_bucket"{  #Especifica el tipo de recurso que se está definiendo. En este caso, es un recurso de versionamiento de bucket S3 de AWS, "versioning_my_s3_bucket" Es el nombre que se le da al recurso. Puedes elegir cualquier nombre que sea significativo para ti, pero es común incluir el nombre del bucket o una descripción del propósito del recurso
    bucket = aws_s3_bucket.my_s3_bucket.id
    versioning_configuration{
        status = "Enabled"
    }
}

#v90 step07 creando un recurso IAM
resource "aws_iam_user" "my_iam_user"{
    name = "my_iam_user_abc_updated"
}

output "my_s3_bucket_versioning" {  #esto es un valor qe se va a mostrar luego de cada ejecución de terraform apply
  value = aws_s3_bucket.my_s3_bucket.versioning[0].enabled
}

output "my_iam_user_arn" {
    value = aws_iam_user.my_iam_user.arn
}