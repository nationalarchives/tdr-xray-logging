# tdr-xray-logging

This repo contains the custom AWS Distro for open telemetry custom image. Currently this is used by the frontend to add logging data to AWS-Xray.

## How it works

Within the ```/.github/workflows/build.yml``` folder we have the following scripts
- build.yml
- deploy.yml

#### build.yml

This script uses [ecs.build.yml](https://github.com/nationalarchives/tdr-github-actions/blob/main/.github/workflows/ecs_build.yml) from tdr-github-actions repo passing it the repo name, image name and secrets.
This is then used to build and push the custom docker image to the ECR repositority with the correct versioning.

#### deploy.yml

This script uses the [ecs.deploy.yml](https://github.com/nationalarchives/tdr-github-actions/blob/main/.github/workflows/ecs_deploy.yml) from tdr-github-actions repo passing it environment and version to deploy.
This then pulls the relevant Open telemetry custom image from ECR and pushes it to the frontend environment.

## Resources

- [AWS Distro for open telemetry](https://aws-otel.github.io/docs/introduction)
- [tdr-github-actions](https://github.com/nationalarchives/tdr-github-actions/tree/main/.github/workflows)

