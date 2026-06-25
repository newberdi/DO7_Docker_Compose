#!/bin/bash

DOCKERHUB_REPO="newberdi/do7"

IMAGES=(
  services-booking-service
  services-gateway-service
  services-hotel-service
  services-loyalty-service
  services-payment-service
  services-report-service
  services-session-service
)

for IMAGE in "${IMAGES[@]}"; do
  TAG_NAME=$(echo "$IMAGE" | sed 's/services-//')

  echo "==> Processing $IMAGE -> $DOCKERHUB_REPO:$TAG_NAME"

  docker tag "$IMAGE:latest" "$DOCKERHUB_REPO:$TAG_NAME"
  docker push "$DOCKERHUB_REPO:$TAG_NAME"
done
