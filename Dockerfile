FROM amazon/aws-otel-collector@sha256:a465f606684ab1ac3c5221c8bffe783b0120c8bd5318e1bf63c90f2cf56af835
COPY config.yml /etc/ecs/custom-config.yml
