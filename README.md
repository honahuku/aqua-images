# aqua-images
aqua のコンテナイメージ置き場

```bash
docker build -t aqua:alpine .
docker run --name aqua-alpine -it --rm aqua:alpine /bin/bash
```

## act による GitHub Actions の検証
### ジョブ名を指定して実行
```bash
# build ワークフローの build-and-push ジョブを指定
act --pull=false --secret-file .env -j build-and-push
```

### ワークフローを指定して実行
```bash
# test ワークフローを指定
act --pull=false --secret-file .env -W .github/workflows/build.yaml
```