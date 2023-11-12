<!-- ## How to build

```bash
conda-build markdownify \
    --output-folder build/native
```

## How to convert the package for all the other platforms

```bash
conda convert \
    --platform all \
    --output build/converted \
    $(ls -1 ./build/native/*/*.tar.bz2)
```

## How to upload

```bash
ls -1 ./build/converted/*/*.bz2 | xargs anaconda upload
``` -->
## How to build

```bash
conda-build markdownify --output-folder build/native
```

## How to upload

```bash
ls -1 ./build/native/noarch/markdownify-*.tar.bz2 | xargs anaconda upload
```
