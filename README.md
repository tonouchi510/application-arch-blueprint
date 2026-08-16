# application-arch-blueprint

DDDを効率よく実践してアプリケーション開発を行うためのテンプレートリポジトリです。

詳細は以下のブログに記載しています。  
=> https://moai510.hatenablog.com/entry/20250205/1738731404

サンプルとして以下のブログで記載のアプリケーションを実装しています。  
=> https://moai510.hatenablog.com/entry/20250607/1749301219

本リポジトリでは以下の特徴があります。

- backend
  - DDD + Onion Architecture
  - CQRS（`Command`はDDDで実装, `Query`は`HASURA`で自動生成）
- frontend
  - Flutterでマルチプラットフォーム対応

## ディレクトリ構成

```
.
├── .github       # 主にCI/CDワークフローの置き場
├── backend       # バックエンドの実装置き場
├── docs          # 全体に関するドキュメント置き場
├── frontend      # フロントエンドの実装置き場
├── snippet       # 開発で使うスクリプト類
└── terraform     # インフラコード置き場
```

### backend-services

- circle-service
  - サークル管理のメインバックエンドサービス
- hasura
  - GraphQL API Gateway
- その他
  - firebase-emulator
    - ローカルで動作確認の際に使用するfirebase-authのエミュレーター
  - local-auth-webhook
    - ローカル実行時にhasuraの代わりにJWTトークン検証を行うwebhook
    - emulatorだと署名なしトークンになるため、hasuraと相性が悪いため

それぞれ詳細は各ディレクトリのREADME、ドキュメントを参照してください。

## 動作確認

```
# 必要なバックエンドサービスの起動
$ make docker-compose-up

# Webアプリ起動
$ make run-local
```

### 動作確認用アカウント

Firebase Auth Emulator起動時には、下記ユーザーアカウントをシードデータとして登録します。

目的に応じた権限のアカウントでサインインして使用してください。なお、Roleはあくまで例なのでアプリに合わせて設定してください。

| Account | Role |
| ---- | ---- |
| admin@example.com	| admin |
| premium@example.com	| premium |
| test@example.com	| freemium |

なお、各アカウントのパスワードはここでは全て`password`に設定されています。
