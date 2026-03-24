#!/bin/bash

echo "Running validation..."

# Check service
systemctl is-active httpd

# Check app response
curl -f http://localhost

if [ $? -ne 0 ]; then
  echo "Validation failed ❌"
  exit 1
else
  echo "Validation passed ✅"
fi
