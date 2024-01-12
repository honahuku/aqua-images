# aqua-images
aqua のコンテナイメージ置き場
どこでも利用できる aqua のコンテナイメージ (ubuntu / alpine ベース)

```bash
docker build -t aqua:alpine .
docker run --name aqua-alpine -it --rm aqua:alpine /bin/bash
```

- TODO: renovate で dockerfile の AQUA_VERSION と AQUA_INSTALLER_VERSION を拾って更新する

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