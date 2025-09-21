
# ================================================= #
#                    ENVIRONMENT                    #
# ================================================= #


# Print local SDK versions for a given candidate
#
# Usage:
# - sdk_ls <candidate>
#
# NOTE: If no candidate is provided, it defaults to 'java'.
sdk_ls() {
  local candidate=${1:-java}
  local versions="$(sdk list $candidate | grep installed)"
  if [[ -z "$versions" ]]; then
    print_error "Candidate not found"
    return 1
  fi
  echo -e "SDK versions for '$(print_bf $candidate)':\n\n$versions"
}
