---
title: "ドキュメント"
description: "halo-aiプラットフォームの技術ドキュメント。アーキテクチャ、サービス、セキュリティ、運用ガイド。"
---


halo-aiを理解し、運用し、拡張するために必要なすべて。

## コアドキュメント

### アーキテクチャ
システムアーキテクチャの全体像：33のサービス、17のエージェント、サービス間通信、ハードウェア抽象化レイヤー。各パーツがどう組み合わさるか、そしてその理由。
[アーキテクチャドキュメントを読む](https://github.com/stampby/halo-ai/blob/main/docs/ARCHITECTURE.md)

### サービス
各サービスの個別ドキュメント。設定、依存関係、ポート、ヘルスチェックなど、スタック内のすべてのコンポーネントを網羅。
[サービスドキュメントを読む](https://github.com/stampby/halo-ai/blob/main/docs/SERVICES.md)

### セキュリティ
脅威モデル、ネットワーク分離、認証、そして「あなたが指示しない限り何もハードウェアから外に出ない」という原則。
[セキュリティドキュメントを読む](https://github.com/stampby/halo-ai/blob/main/docs/SECURITY.md)

### トラブルシューティング
よくある問題、診断コマンド、ログの場所、復旧手順。何か壊れたらまずここから。
[トラブルシューティングドキュメントを読む](https://github.com/stampby/halo-ai/blob/main/docs/TROUBLESHOOTING.md)

## 上級トピック

### VPN
halo-aiインスタンスへの安全なリモートアクセス。ポートを公開せずにマシン間でメッシュネットワーク。
[VPNドキュメントを読む](https://github.com/stampby/halo-ai/blob/main/docs/VPN.md)

### スタック保護
サービスウォッチドッグ、自動再起動ポリシー、ヘルス監視、そして問題が発生したときにhalo-aiを稼働させ続けるメカニズム。
[スタック保護ドキュメントを読む](https://github.com/stampby/halo-ai/blob/main/docs/STACK-PROTECTION.md)

### Blueprints
halo-aiに新機能を追加するための宣言的サービス定義。Blueprintを書いて配置すれば、システムが残りを処理する。
[Blueprintsドキュメントを読む](https://github.com/stampby/halo-ai/blob/main/docs/BLUEPRINTS.md)

### 自律パイプライン
halo-aiエージェントが人間の介入なしにどう連携するか。タスク分解、エージェント選択、実行、品質ゲート。
[自律パイプラインドキュメントを読む](https://github.com/stampby/halo-ai/blob/main/docs/AUTONOMOUS-PIPELINE.md)

*アーキテクトによって設計・構築。*
