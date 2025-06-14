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
├── docs          # ドキュメント置き場
├── frontend      # フロントエンドの実装置き場
├── snippet       # 開発で使うスクリプト類
└── terraform     # インフラコード置き場
```

それぞれ詳細は各ディレクトリのREADMEを参照してください。

