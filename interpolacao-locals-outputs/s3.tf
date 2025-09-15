resource "aws_s3_bucket" "this" {
  bucket = "${var.environment}-bucket-${random_pet.bucket.id}"

  tags = local.commons_tags_bucket
}

resource "aws_s3_object" "this" {
  bucket = aws_s3_bucket.this.bucket
  key    = "${local.path_documents_txt}/${local.source_file_path}"
  source = local.source_file_path
  etag   = filemd5(local.source_file_path)
  acl    = "public-read"
}