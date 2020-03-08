from debian:10

RUN apt-get update -y \
    && apt-get install -y curl git unzip xz-utils zip