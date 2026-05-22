
# OpenCode For My Own Convenience

https://opencode.ai/docs/

#### Loads current directory into the OpenCode container

```bash
docker run -it --rm -w /workspace \
    -v $(pwd):/workspace \
    ghcr.io/anomalyco/opencode:1.14.48
```
