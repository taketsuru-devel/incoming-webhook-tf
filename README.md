# 環境
- amazon linux2
- terraform v0.13.0

# terraform勉強中
- incoming-webhookにrequestするだけのlambda

# コマンド
- terraform init
- terraform plan
- terraform apply
- terraform destroy

# input
- project_name
- source_file
- output_path
- runtime
- handler

# output
- 必要になったら考える

# lambda周りの更新
## 共通
- python:3.6.12-busterをdocker pull
- docker_python.shでログイン
- 作業後の各フォルダがrootなので戻しておく
## requirements.txtの更新
- コード書いてpip install
- pip freeze > requirements.txt
## lambdaアップロードの準備
- build.sh実行

