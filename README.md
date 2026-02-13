# redmine_wiki_lists

> [!Tip]
> [redmine_studio_plugin](https://github.com/RedminePower/redmine_studio_plugin) をご利用いただければ、この機能を含む複数の便利な機能をまとめて管理できます。
>
> また、[Redmine Studio](https://www.redmine-power.com/) アプリと組み合わせることで、より快適に Redmine をお使いいただけます。

## 概要

Wiki ページやチケットの説明にチケットやページの一覧を表示するマクロを提供するプラグインです。
`wiki_list`、`issue_name_link`、`ref_issues` の3つのマクロが利用できます。

<img src="images/wiki_lists_03.png" width="600">

詳細は [こちら](https://github.com/RedminePower/redmine_studio_plugin/blob/master/docs/wiki_lists.md) をご覧ください。

## 対応バージョン

- Redmine 5.x（5.1.11 にて動作確認済み）
- Redmine 6.x（6.1.1 にて動作確認済み）

## インストール

Redmine のインストール先はお使いの環境によって異なります。
以下の説明では `/var/lib/redmine` を使用しています。
お使いの環境に合わせて変更してください。

| 環境 | Redmine パス |
|------|-------------|
| apt (Debian/Ubuntu) | `/var/lib/redmine` |
| Docker (公式イメージ) | `/usr/src/redmine` |
| Bitnami | `/opt/bitnami/redmine` |

以下を実行し、Redmine を再起動してください。

```bash
cd /var/lib/redmine/plugins
git clone https://github.com/RedminePower/redmine_wiki_lists.git
```

## アンインストール

プラグインフォルダを削除し、Redmine を再起動してください。

```bash
cd /var/lib/redmine/plugins
rm -rf redmine_wiki_lists
```
