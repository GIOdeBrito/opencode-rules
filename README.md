
# OpenCode For My Own Convenience

https://opencode.ai/docs/

#### Loads current directory into the OpenCode container

```bash
docker run --rm -it -w /workspace -v $(pwd):/workspace gbmbworkdir:latest
```
