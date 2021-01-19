# Build an image on top of the stock GovReady-Q image.
FROM govready/govready-q:latest

# The parent Dockerfile ends with 'USER application' to run the
# container as a non-privileged user. But we need to go back to
# root to add additional files and then switch back to the non-
# root user at the end.
USER root

# Copy our public app files into place.
RUN mkdir branding
COPY . branding

# Activate the branding package. The environment variable is read
# by dockerfile_exec.sh in the GovReady-Q parent image. And modifying
# /tmp/environment.json is necessary at this step so that collectstatic
# picks it up below.
ENV BRANDING branding
RUN sed -i "s/}/,\"branding\": \"branding\" }/" /tmp/environment.json

# Flatten static files. The base image did it once, but we may have
# added new static files so we must do it again.
RUN python3.6 manage.py collectstatic --noinput

# Run the container's process zero as this user --- see above.
USER application

# Check that everything looks good.
RUN python3.6 manage.py check
