# pict-cli

ペアワイズ法で要素の組み合わせを最適化する

## how to use

```sh
docker build -t pict-cli .
docker run --rm -v "$PWD":/data -w /data pict-cli input.pict
```
