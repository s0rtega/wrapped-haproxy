@test "Testing foo" {
  curl -sL -w "%{http_code} \\n" 127.0.0.1:8000/foo -o /dev/null | grep "200"
}

@test "Testing bar" {
  curl -sL -w "%{http_code} \\n" 127.0.0.1:8000/bar -o /dev/null | grep "200"
}