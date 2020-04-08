#!/usr/bin/env bash

source "$PROJECT_HOME/src/ensure.sh"
source "$PROJECT_HOME/src/github.sh"
source "$PROJECT_HOME/src/github_actions.sh"
source "$PROJECT_HOME/src/misc.sh"

main() {
  ensure::env_variable_exist "GITHUB_REPOSITORY"
  ensure::env_variable_exist "GITHUB_EVENT_PATH"
  ensure::env_variable_exist "GITHUB_REF"
  ensure::total_args 1 "$@"

  export GITHUB_TOKEN="$1"

  local -r branch_name="$GITHUB_REF"

  log::message "$branch_name"

  if str::contains "$branch_name" "refs/tags"; then
    log::message "Tag not removed!"
  else
    github::delete_ref "$branch_name"

    log::message "Branch removed!!"
  fi

  exit $?
}
