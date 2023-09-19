resource "random_string" "hello-random" {
  length = 8

  # this means that the random string
  # will not contain special characters
  special = false
}

# Output variable that shows the value
# of the random string
output "random_string" {
  value = random_string.hello-random.result
}

# Local file
resource "local_file" "hello-file" {
  content  = "Hello World: ${random_string.hello-random.result}"
  filename = "hello-${random_string.hello-random.result}.txt"
}