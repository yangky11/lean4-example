FROM ubuntu:latest

WORKDIR /lean4-example
COPY . .

# Install dependencies.
RUN apt-get update && apt-get install -y curl git git-lfs clang lld libc++-dev

# Install elan.
ENV ELAN_HOME="/.elan"
ENV PATH="${ELAN_HOME}/bin:${PATH}"
RUN curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | bash -s -- -y

# Build the project.
RUN lake build
