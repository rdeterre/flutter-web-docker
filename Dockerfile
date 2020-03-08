from debian:10

RUN apt-get update -y                                                         \
    && apt-get install -y curl git unzip xz-utils wget zip

RUN cd /usr/local                                                             \
    && git clone https://github.com/flutter/flutter.git -b stable

ENV PATH="$PATH:/usr/local/flutter/bin"

RUN flutter precache                                                          \
    && flutter channel beta                                                   \
    && flutter upgrade                                                        \
    && flutter config --enable-web