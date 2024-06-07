## Publish to personal ghcr
- Generate a classic PAT with write access to container registry
- set in env with `export GITHUB_TOKEN=XXXX`
- login to ghcr `echo $GITHUB_TOKEN | docker login ghcr.io -u USERNAME --password-stdin`
### Dev
- built and tag image `docker build -t ghcr.io/USERNAME/base-dev:latest --target base-dev .`
- push to repo with `docker push ghcr.io/USERNAME/base-dev:latest`
### Base
- built and tag image `docker build -t ghcr.io/USERNAME/base:latest --target base .`
- push to repo with `docker push ghcr.io/USERNAME/base:latest`
