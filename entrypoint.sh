#!/bin/sh -l
echo "New version!"
cd "$GITHUB_WORKSPACE" || echo "Could not find the code. Make sure you did a checkout."
npm i
npx ng build --"$1"