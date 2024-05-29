# Dockerfile
FROM rust:latest

# コンテナ内で必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# 作業ディレクトリを作成
WORKDIR /usr/src/myapp

# カスタムシェルスクリプトや初期化ファイルの追加が必要ならここに記載
# ADD script.sh /usr/src/myapp/script.sh

# デフォルトでシェルを起動
CMD ["bash"]
