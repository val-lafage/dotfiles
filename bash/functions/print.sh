
print_warning() {
  echo -e "\e[33m$1\e[0m"
}

print_error() {
  echo -e "\e[31m$1\e[0m" >&2
}

print_bf() {
  echo -e "\e[1m$1\e[0m"
}
