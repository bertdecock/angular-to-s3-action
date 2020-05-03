#!/bin/sh -l
bucketName="$1"
echo "New version!"
cd "$GITHUB_WORKSPACE" || echo "Could not find the code. Make sure you did a checkout of the project."
npm i
npx ng build --prod
aws s3 sync "s3://$bucketName" --delete ./dist
