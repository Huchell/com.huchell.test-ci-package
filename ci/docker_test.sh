#!/usr/bin/env bash

set -e

docker run \
  -e UNITY_LICENSE \
  -e TEST_PLATFORM \
  -e UNITY_USERNAME \
  -e UNITY_PASSWORD \
  -w /project/ \
  -v $UNITY_DIR:/project/ \
  $IMAGE_NAME \
  /bin/bash -c "/ci/before_script.sh && /ci/test.sh"
