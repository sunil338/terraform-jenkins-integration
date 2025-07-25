provider "local" {}

# Create directories
resource "local_file" "dir1" {
  filename = "${path.module}/dir1/.keep"
  content  = "This is directory1"
}

resource "local_file" "dir2" {
  filename = "${path.module}/dir2/.keep"
  content  = "This is directory2"
}

# Create files
resource "local_file" "file1" {
  filename = "${path.module}/file1.txt"
  content  = "This is file1"
}

resource "local_file" "file2" {
  filename = "${path.module}/file2.txt"
  content  = "This is file2"
}

