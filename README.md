!!! This is no longer supported, you should use https://hub.docker.com/r/nimlang/nim/ instead :)

# nim-builder
Docker container to run and build Nim code.

This image is based on `alpine` Linux and has a total size of **162.6 MB**. Be advised that the final executable will be linked with `musl libc` and for that reason, the output will be a **static** binary for compatibility.

# How to build:
  You can pull this image from Docker Hub directly to skip building yourself: `docker pull guitmz/nim-builder`
  - Clone this repo: `git clone https://github.com/guitmz/nim-builder.git`
  - `chmod +x entrypoint.sh`
  - Build the image `docker build -t image_name .` (from inside the Dockerfile folder)

# Usage:
 - To **run** your program: `docker run -t --rm -v $(pwd -P)/:/tmp/ nim-builder run /tmp/file.nim`
 - To **build** your program: `docker run -t --rm -v $(pwd -P)/:/tmp/ nim-builder build /tmp/file.nim` 
 - Note that the executable will be placed on the folder you monted to the container (ie: `$(pwd -P)`)
