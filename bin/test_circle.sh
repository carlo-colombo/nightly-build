#!/bin/bash

_circle_token=$1

trigger_build_url=https://circleci.com/api/v1/me?circle-token=${_circle_token}

curl \
--header "Accept: application/json" \
--header "Content-Type: application/json" \
--request GET ${trigger_build_url}
