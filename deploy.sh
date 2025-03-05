#!/bin/bash
docker build -t my-web-app .
docker stop my-web-app || true  # Stop if already running, ignore errors
docker rm my-web-app || true    # Remove if exists, ignore errors
docker run -d --name my-web-app -p 80:80 my-web-app