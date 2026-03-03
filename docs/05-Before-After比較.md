# Before / After 比較

> **English version:** [05-before-after.md](05-before-after.md)

本ドキュメントでは、ハードニング前後の主要な設定変更点をまとめています。詳細な設定ファイルは `configs/` ディレクトリに保存されています。

## SSH 設定
### Before
- `PermitRootLogin yes`
- `PasswordAuthentication yes`
- `PubkeyAuthentication yes`（デフォルト）
- SSH ディレクトリのパーミッションが緩い

### After
- `PermitRootLogin no`
- `PasswordAuthentication no`
- `PubkeyAuthentication yes`
- `~/.ssh` および鍵ファイルのパーミッションを強化

## ファイアウォール設定
### Before
- firewalld が無効、または緩い設定
- デフォルトで複数サービスが公開されている

### After
- firewalld を有効化
- 必要なサービスのみ許可
- デフォルトゾーンをより厳格に設定

## システムパラメータ
### Before
- デフォルトのカーネルパラメータ
- ハードニング設定なし

### After
- `/etc/sysctl.conf` にセキュリティ関連の設定を追加
- `sysctl -p` による反映

## 監査ログ
### Before
- auditd はデフォルトルールのみ

### After
- カスタム監査ルールを適用
- 認証・設定変更のログを強化

この比較により、ハードニングによる具体的な改善点を把握できます。