# Circle Management App - Frontend

Flutter アプリケーション for サークル管理システム

## 技術スタック

- **Framework**: Flutter 3.11.3+
- **State Management**: Riverpod + Hooks Riverpod
- **Routing**: Auto Route
- **GraphQL**: Ferry
- **認証**: Firebase Authentication
- **デザイン**: Material 3

## プロジェクト構造

```
lib/
├── main.dart                      # アプリケーションエントリーポイント
│
├── foundation/
│   ├── constants.dart             # アプリ定数
│   ├── error_msg.dart             # エラーメッセージ（日本語）
│   └── riverpod_compat.dart       # riverpod エクスポート
│
├── data/
│   ├── app_error.dart             # エラークラス
│   ├── model/
│   │   ├── circle.dart            # CircleModel
│   │   └── board.dart             # BoardModel
│   ├── source/
│   │   └── graphql_source.dart    # GraphQL クライアント初期化
│   ├── repository/
│   │   ├── circle_repository.dart # Circle リポジトリ（GraphQL呼び出し）
│   │   └── board_repository.dart  # Board リポジトリ（GraphQL呼び出し）
│   └── provider/
│       ├── repository_provider.dart # リポジトリプロバイダー
│       ├── auth_provider.dart       # Firebase Auth プロバイダー
│       └── circle_notifier.dart     # Circle状態管理
│
└── ui/
    ├── route/
    │   ├── app_router.dart        # auto_route 設定
    │   └── app_router.gr.dart     # 生成ファイル
    ├── theme/
    │   └── app_theme.dart         # Material 3 テーマ
    ├── components/
    │   └── loading_overlay.dart   # 共有コンポーネント
    ├── auth/
    │   └── login_screen.dart      # ログイン画面
    ├── home/
    │   └── home_screen.dart       # ホーム画面
    └── circle/
        ├── circle_list_screen.dart  # サークル一覧画面
        └── circle_detail_screen.dart # サークル詳細画面
```

## セットアップ

### 前提条件
- Flutter 3.11.3以上
- Dart 3.11.3以上
- Firebase アカウント

### インストール

1. 依存パッケージをインストール
```bash
flutter pub get
```

2. Code generation 実行
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

3. Firebase設定ファイルを配置
   - iOS: `ios/Runner/GoogleService-Info.plist`
   - Android: `android/app/google-services.json`

### 実行

```bash
flutter run
```

## 主な機能

### 認証フロー
1. Firebase Authentication で Email/Password ログイン
2. Firebase UI を使用した UI
3. ログイン状態を Riverpod で管理
4. auto_route で認証状態に応じたルーティング

### サークル管理
- Riverpod の StateNotifier で状態管理
- GraphQL mutation で API 呼び出し
- Ferry で GraphQL code generation

### ルーティング
- auto_route で宣言的にルートを定義
- 自動で `.gr.dart` ファイルが生成
- 型안전 なナビゲーション

## Code Generation

### Auto Route
```bash
flutter pub run build_runner build
```

### Ferry (GraphQL)
GraphQL ファイルから Dart コード生成：
```bash
flutter pub run build_runner build
```

## 開発ガイド

### 新しい画面の追加

1. `lib/ui/{feature}/` に新しいファイルを作成
2. `@RoutePage()` アノテーションを付与
3. `AppRouter` に route を追加
4. Code generation 実行

```dart
@RoutePage()
class MyScreen extends ConsumerWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Riverpod で状態取得
    final data = ref.watch(myProvider);
    return ...;
  }
}
```

### 新しい Riverpod Provider の追加
```dart
// lib/data/provider/my_provider.dart
final myProvider = StateProvider<String>((ref) => 'initial value');
```

### 新しい GraphQL Operation の追加
1. `lib/graphql/` に `.graphql` ファイルを作成
2. mutation/query を定義
3. `flutter pub run build_runner build` でコード生成
4. Repository で生成されたコードを使用

## エラーハンドリング

エラーは `foundation/error_msg.dart` で日本語メッセージに変換：

```dart
try {
  await repository.createCircle(...);
} on AppError catch (e) {
  final msg = getErrorMessage(e);
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(msg)),
  );
}
```

## トラブルシューティング

### Firebase 初期化エラー
- `ios/Runner/GoogleService-Info.plist` 配置確認
- `android/app/google-services.json` 配置確認

### Code generation エラー
```bash
flutter pub run build_runner clean
flutter pub run build_runner build
```

### Riverpod デバッグ
`main.dart` で `ProviderLogger` を有効化（開発環境のみ）

```dart
ProviderScope(
  observers: [ProviderLogger()],
  child: MyApp(...),
)
```

