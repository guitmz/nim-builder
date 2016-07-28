# nim-builder
Docker container to run and build Nim code.

This image is based on `alpine` Linux and has a total size of **162.6 MB**.

# How to build:
  - Clone this repo: `git clone https://github.com/guitmz/nim-builder.git`
  - `chmod +x entrypoint.sh`
  - Build the image `docker build -t image_name .` (from inside the Dockerfile folder)

# Usage:
 - To **run** your program: `docker run -t --rm -v $(pwd -P)/:/tmp/ nim-builder run /tmp/file.nim`
 - To **build** your program: `docker run -t --rm -v $(pwd -P)/:/tmp/ nim-builder build /tmp/file.nim` 
 - Note that the executable will be placed on the folder you monted to the container (ie: `$(pwd -P)`)
