#!/bin/sh -l
cd "$(GITHUB_WORKSPACE)" || echo "Could not find the code. Make sure you did a checkout."
npx ng build --"$1"