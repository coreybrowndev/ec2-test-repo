# FROM node:16
# Use a multi-platform base image
FROM node:16

# Set the default value for TARGETPLATFORM
ARG TARGETPLATFORM=linux/amd64

# Run commands based on the target platform
RUN if [ "$TARGETPLATFORM" = "linux/amd64" ] ; then \
        echo "Running on amd64" ; \
    elif [ "$TARGETPLATFORM" = "linux/arm64" ] ; then \
        echo "Running on arm64" ; \
    else \
        echo "Unsupported platform" ; \
        exit 1 ; \
    fi
    
EXPOSE 3333
WORKDIR /app
VOLUME /app
CMD npm i && node ace migration:run && node ace serve --watch
