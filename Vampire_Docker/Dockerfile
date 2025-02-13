# Use a base image with Ubuntu (or any Linux distribution)
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    git \
    cmake \
    g++ \
    wget

# Clone and build Vampire
RUN git clone https://github.com/vprover/vampire.git /vampire
WORKDIR /vampire
RUN mkdir build && \
    cd build && \
    cmake .. && \
    make

# Set the working directory
WORKDIR /vampire/build

# Default command to run Vampire
CMD ["./vampire", "--help"]