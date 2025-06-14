# circle-service

サークル管理アプリのバックエンドサービス。

GraphQLのエンドポイントとして、HASURAの責務外のCommand（更新系API）を提供する。

## 環境構築

```
$ make go-setup
```

## 開発

### ディレクトリ設計

```
.
├── configs               # 各種設定ファイル置き場
├── graph                 # 外部に公開するAPI（GraphQL）
└── internal              # 内部実装（オニオンアーキテクチャ）
    ├── application       # ユースケースを実装。RBACによるアクセス制御もここで。
    ├── domain            # ドメイン層。ビジネスロジックはできるだけここに集約。
    │   ├── models        # 集約ごとにドメインオブジェクトを実装
    │   ├── services      # 集約をまたがるドメインサービスの実装
    │   └── shared        # 共有するドメインオブジェクト置き場
    ├── infrastructure    # DB等、外部システムとの通信
    └── shared            # 共有ライブラリ
```

### 自動生成コードの再生成

```
$ make go-gen
```

### DBスキーマ更新時

sqlboilerによる自動生成コードの再生成を行う。 `docker compose`で`DB(PostgreSQL)`を起動した状態で、以下のコマンドを実行。

```
$ make sqlboiler
```

※DBスキーマ変更作業自体は`HASURA`コンソール上で行う想定

### GraphQLスキーマの更新

`api`の追加を行う場合、`graph`フォルダ以下でスキーマを管理しているので、編集 & コンパイルする。

1. `graph/schema.graphqls`の編集
  - `query`や`mutation`の追加、およびスキーマ変更
  - 必要に応じて、`resolver.go`や`model.go`を編集
2. 自動生成コードを再生成

```
$ make gqlgen
```

3. `schema.resolvers.go`に生成された関数の中身を実装

## テスト

- ローカル => `make test`
- CI => `.github/workflows`を参照

## 動作確認

goのバックエンド単体で動作確認する場合は、`GraphQL Playground`を使う。

1. サーバーを起動

```
$ make go-run
2022/12/24 15:24:19 connect to http://localhost:5000/ for GraphQL playground
```

2. 出力されたURLをブラウザで開き、playgroundにアクセスする

3. Headersを設定する

```
{
    "X-Hasura-User-Id": "YOUR_FIREBASE_USER_UID"
}
```

4. 実行

playground docsに記載の通り、パラメータを設定してデバッグする。

