# GGUF Model Docker Transfer

This setup allows you to package GGUF models in minimal Docker containers and transfer them via Docker Hub.

## Directory Structure

Each model directory contains Docker configuration and a `model-files/` folder for local weights:

```
gemma-model/
├── Dockerfile
├── docker-bake.hcl
└── model-files/          # gitignored — place weights here before building
    └── *.gguf
```

- `gemma-model/` — Gemma 3n E4B
- `gemma4-12B/` — Gemma 4 12B (multimodal)
- `qwen-model/` — Qwen3VL 4B (multimodal)
- `bge-base-model/` — BGE embedding model (HuggingFace directory in `model-files/`)

The `model-files/` directory is never committed to git. After cloning, download or copy model weights into the appropriate `model-files/` folder before building.

Each model directory has its own `Dockerfile` and `docker-bake.hcl` for independent building, or you can build all from the root.

## Building and Pushing to Docker Hub

### Build All Models

1. **Login to Docker Hub:**
   ```bash
   docker login
   ```

2. **Build and push all models from root:**
   ```bash
   docker buildx bake --push
   ```

   This will build and push all models:
   - `xynova/gemma-model:latest` and `xynova/gemma-model:gemma-3n-E4B-it-Q6_K`
   - `xynova/gemma4-12b-model:latest` and `xynova/gemma4-12b-model:gemma-4-12B-it-QAT-Q4_0`
   - `xynova/qwen-model:latest` and `xynova/qwen-model:Qwen3VL-4B-Instruct-Q4_K_M`
   - `xynova/bge-base-model:latest` and `xynova/bge-base-model:bge-base-en-v1.5`

### Build Individual Models

Place model weights in `{model-dir}/model-files/` first, then build:

To build a specific model, navigate to its directory:

**Gemma model:**
```bash
cd gemma-model
docker buildx bake --push
```

**Gemma 4 12B model:**
```bash
cd gemma4-12B
docker buildx bake --push
```

**Qwen model:**
```bash
cd qwen-model
docker buildx bake --push
```

**BGE Base model:**
```bash
cd bge-base-model
docker buildx bake --push
```

## Downloading and Extracting on Windows

### Gemma Model

1. **Pull the image:**
   ```bash
   docker pull xynova/gemma-model:latest
   ```

2. **Extract the file:**
   ```bash
   docker create --name temp-gemma xynova/gemma-model:latest
   docker cp temp-gemma:/gemma-3n-E4B-it-Q6_K.gguf ./gemma-3n-E4B-it-Q6_K.gguf
   docker rm temp-gemma
   ```

   One-liner (PowerShell):
   ```powershell
   docker create --name temp-gemma xynova/gemma-model:latest; docker cp temp-gemma:/gemma-3n-E4B-it-Q6_K.gguf ./gemma-3n-E4B-it-Q6_K.gguf; docker rm temp-gemma
   ```

### Gemma 4 12B Model

1. **Pull the image:**
   ```bash
   docker pull xynova/gemma4-12b-model:latest
   ```

2. **Extract the files:**
   ```bash
   docker create --name temp-gemma4 xynova/gemma4-12b-model:latest
   docker cp temp-gemma4:/gemma-4-12B-it-QAT-Q4_0.gguf ./gemma-4-12B-it-QAT-Q4_0.gguf
   docker cp temp-gemma4:/mmproj-gemma-4-12B-it-QAT-BF16.gguf ./mmproj-gemma-4-12B-it-QAT-BF16.gguf
   docker rm temp-gemma4
   ```

   One-liner (PowerShell):
   ```powershell
   docker create --name temp-gemma4 xynova/gemma4-12b-model:latest; docker cp temp-gemma4:/gemma-4-12B-it-QAT-Q4_0.gguf ./gemma-4-12B-it-QAT-Q4_0.gguf; docker cp temp-gemma4:/mmproj-gemma-4-12B-it-QAT-BF16.gguf ./mmproj-gemma-4-12B-it-QAT-BF16.gguf; docker rm temp-gemma4
   ```

### Qwen Model

1. **Pull the image:**
   ```bash
   docker pull xynova/qwen-model:latest
   ```

2. **Extract the file:**
   ```bash
   docker create --name temp-qwen xynova/qwen-model:latest
   docker cp temp-qwen:/Qwen3VL-4B-Instruct-Q4_K_M.gguf ./Qwen3VL-4B-Instruct-Q4_K_M.gguf
   docker rm temp-qwen
   ```

   One-liner (PowerShell):
   ```powershell
   docker create --name temp-qwen xynova/qwen-model:latest; docker cp temp-qwen:/Qwen3VL-4B-Instruct-Q4_K_M.gguf ./Qwen3VL-4B-Instruct-Q4_K_M.gguf; docker rm temp-qwen
   ```

### BGE Base Model

1. **Pull the image:**
   ```bash
   docker pull xynova/bge-base-model:latest
   ```

2. **Extract the model directory:**
   ```bash
   docker create --name temp-bge xynova/bge-base-model:latest
   docker cp temp-bge:/bge-base-en-v1.5 ./bge-base-en-v1.5
   docker rm temp-bge
   ```

   One-liner (PowerShell):
   ```powershell
   docker create --name temp-bge xynova/bge-base-model:latest; docker cp temp-bge:/bge-base-en-v1.5 ./bge-base-en-v1.5; docker rm temp-bge
   ```

The model files will be extracted to your current directory.
