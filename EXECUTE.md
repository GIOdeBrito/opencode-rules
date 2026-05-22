
Loads current directory into OpenCode container

docker run -it --rm -w /workspace \
    -v $(pwd):/workspace \
    ghcr.io/anomalyco/opencode:1.14.48
