
# Run command below on gio@ugarit
# - added volumes
# - added output volume
docker run -it --rm \
    -v $(pwd):/projectdir \
    -v /media/gio/Unug/Documents/AI/OpenCode:/conduct:ro \
    ghcr.io/anomalyco/opencode

# Run commands in container
docker exec $(docker ps | grep -i "opencode" | awk -F '     ' '{print $3}') ls
