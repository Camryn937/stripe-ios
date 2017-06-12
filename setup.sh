#!/bin/bash

echo '▸ Installing dependencies for Stripe iOS Example (Simple)';

cd Example;
rm Cartfile.resolved;

if ! command -v carthage > /dev/null; then
  echo ''
  echo 'ERROR: Please install carthage before running setup.sh:'
  echo 'https://github.com/Carthage/Carthage#installing-carthage';
  exit 1;
fi

carthage bootstrap --platform ios;

echo '▸ Finished installing dependencies for Stripe iOS Example (Simple)';
