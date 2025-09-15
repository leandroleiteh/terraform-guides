output "bucket_name_test" {
  value       = aws_s3_bucket.this.bucket
  description = "name of bucket"
}

output "arn_bucket_test" {
  value = aws_s3_bucket.this.arn
}

output "bucket_domain_name_test" {
  value = aws_s3_bucket.this.bucket_domain_name
}

output "test_file_path" {
  value = "${aws_s3_bucket.this.bucket}/${aws_s3_object.this.key}"
}

output "document_url" {
  value = "${local.path_https}/${aws_s3_bucket.this.bucket_regional_domain_name}/${aws_s3_object.this.key}"
}
