## How to build and upload

Edit the `./markdownify/meta.yaml` and remove the noarch section from the build section.

```yaml
build:
  noarch: generic
```

After making the modification, you can run the following.

build:

```bash
conda-build markdownify \
    --output-folder build/native
```

convert:

```bash
conda convert \
    --platform all \
    --output build/converted \
    $(ls -1 ./build/native/*/*.tar.bz2)
```

upload:

```bash
ls -1 ./build/converted/*/*.bz2 | xargs anaconda upload
```


## How to build and upload (noarch)

You can run commands in the following.

build:

```bash
conda-build markdownify --output-folder build/native
```

upload:

```bash
ls -1 ./build/native/noarch/markdownify-*.tar.bz2 | xargs anaconda upload
```
