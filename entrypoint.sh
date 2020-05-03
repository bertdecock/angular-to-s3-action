#!/bin/sh -l
bucketName="$1"
folderName="$2"
cd "$GITHUB_WORKSPACE" || echo "Could not find the code. Make sure you did a checkout of the project."
echo "Installing dependencies"
npm i
echo "Building for production"
npx ng build --prod
echo "Will deploy the contents of /dist/$folderName to s3://$bucketName"
aws s3 sync "./dist/$folderName" "s3://$bucketName" --delete
echo "Deployed!"
