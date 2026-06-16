
# OpenCode For My Own Convenience

https://opencode.ai/docs/

#### Loads current directory into the OpenCode container

```bash
docker run -it --rm -w /workspace \
    -v $(pwd):/workspace \
    ghcr.io/anomalyco/opencode:1.14.48

docker run -it --rm -w /workspace \
        -e RULES_REPOSITORY_DIR=__dir__
	-v $(pwd):/workspace \
	-v /home/dev/UbuntuDev/Repositories/opencode-rules/opencode.json:/workspace/opencode.json:ro \
	-v /home/dev/UbuntuDev/Repositories/opencode-rules/opencode-global-config:/root/.config \
	ghcr.io/anomalyco/opencode:1.14.48

```
