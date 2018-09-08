# docker-ml

```shellsession
$ gcloud authh login
```

```shellsession
$ ECR_REPOSITORY_URI="${YOUR_AWS_ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com" \
ECR_AWS_ACCESS_KEY="${YOUR_AWS_ACCESS_KEY}" \
ECR_AWS_SECRET_KEY="${YOUR_AWS_SECRET_KEY}" \
GCR_PROJECT_ID="${YOUR_GCP_PROJECT_ID}" \
packer build packer.json
```
