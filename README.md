# models-in-docker

Place weights in `{model-dir}/model-files/` before building. Build with `docker buildx bake --push` from repo root or a model directory.

## Extract

**gemma-model**
```bash
docker create --name t xynova/gemma-model:latest
docker cp t:/gemma-3n-E4B-it-Q6_K.gguf .
docker rm t
```

**gemma4-12b-model**
```bash
docker create --name t xynova/gemma4-12b-model:latest
docker cp t:/gemma-4-12B-it-QAT-Q4_0.gguf .
docker cp t:/mmproj-gemma-4-12B-it-QAT-BF16.gguf .
docker rm t
```

**qwen-model**
```bash
docker create --name t xynova/qwen-model:latest
docker cp t:/Qwen3VL-4B-Instruct-Q4_K_M.gguf .
docker cp t:/mmproj-Qwen3VL-4B-Instruct-F16.gguf .
docker rm t
```

**bge-base-model**
```bash
docker create --name t xynova/bge-base-model:latest
docker cp t:/bge-base-en-v1.5-q4_k_m.gguf .
docker rm t
```
