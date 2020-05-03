# angular-to-s3-action
This action will build an angular project for production and deploy it to an s3 bucket.

To do this, it needs a few things:
1. Environment variables:
    1. The ```AWS_ACCESS_KEY_ID``` environment variable. Set this in your action workflow file. It's best to define a secret in your repository. [Check this page for help.](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets)
    2. The ```AWS_SECRET_ACCESS_KEY``` environment variable. Same setup as above.
    3. The ```AWS_DEFAULT_REGION``` environment variable. Set this to the region of your bucket.
2. Parameters
    1. The bucket name, passed as ```bucket-name```.
    2. The name of the folder under /dist, containing the output files. Passed as ```folder-name```. For example, if your dist folder is structured as ```dist/abcd```, pass ```abcd```.

## Example setup
```yaml
steps:
  - name: Build and deploy to s3
    uses:  bertdecock/angular-to-s3-action@v1.1
    env:
      AWS_ACCESS_KEY_ID: ${{ secrets.awsAccessKeyId }}
      AWS_SECRET_ACCESS_KEY: ${{ secrets.awsSecretAccessKey }}
      AWS_DEFAULT_REGION: 'eu-west-1'
    with:
      bucket-name: 'abcd-bucket'
      folder-name: 'abcd' 
```
