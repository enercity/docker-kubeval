# docker-kubeval

Docker plugin to 
- run kubeval 
- run kubeval-lqt to find all manifest files from a source directory and execute kubeval for each found file.

Works best with `docker-kustomize-lqt` when multiple manifests are being generated from a single build and need to be validated. 

## Docker

Build the Docker image with the following commands:

```
docker build --rm=true -t docker-kubeval .
```

## Usage

Execute from the working directory:

```
docker run --rm \
  -v $(pwd):$(pwd) \
  -w $(pwd) \
  kubeval-lqt {SERVICE_TYPE} {ADDITIONAL_SCHEMA_LOCATIONS}
```