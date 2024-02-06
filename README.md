# アプリケーション名
認知行動療法実践アプリ

# アプリケーション概要
認知行動療法の手法のひとつである「トリプルカラム法」を手軽に実践するアプリ<br>

【参考】トリプルカラム法<br>
起きた出来事に対して、<br>
①自動思考（出来事に対する直感的で無意識の思考や感情）<br>
②認知のゆがみ（自動思考が陥りがちな10のパターン）<br>
③合理的な反応（客観的で冷静な見方や合理的な考え方を取り入れた、より建設的で健康な反応）<br>
を整理して視覚的に表現する方法。<br>
ユーザーは日々の出来事に対してこのフレームワークを適用し、ネガティブな思考や感情に気付き、<br>
それに対してより建設的で健康な反応を見つけるトレーニングを行います。<br>
それにより、ポジティブな変化やストレスの変化が期待されます。

# URL
https://cbt-app.onrender.com

# テスト用アカウント
・Basic認証ID：admin<br>
・Basic認証パスワード：0413<br>
・メールアドレス：test5@test.com<br>
・パスワード：test555

# 利用方法

## トリプルカラム法のワークをする
1. トップページ（投稿ワーク一覧ページ）のヘッダーからユーザー新規登録/ログインをする
2. 「ワークを開始する」ボタンから、3つの指示文にしたがって入力をする

# アプリケーションを作成した背景
このアプリケーションは、メンタルヘルス悪化予防の観点から制作しました。<br>
近年、日本ではビジネスパーソンのメンタルヘルス不調が増加しており、これに対するケアの必要性が高まっています。<br>
行政や企業がメンタルヘルスケアを強化している一方で、予防の観点からは個人の改善が不可欠です。<br>
その中で、科学的に根拠がある「認知行動療法」が個人のメンタルヘルスの向上に有効であることが知られています。<br>
しかし、現状オンラインで利用できるサービスは有料のものが多く、<br>
手軽に実践できる場が限られていることが課題であると考えました。<br>
そこで、このアプリを制作し、認知行動療法を気軽に実践できる場を提供することにしました。

# 実装した機能について

## トップページ（一覧ページ）
[![Image from Gyazo](https://i.gyazo.com/a6a648d1e8fadfd09703b0299ba23691.png)](https://gyazo.com/a6a648d1e8fadfd09703b0299ba23691)
・ログアウトしている時には、過去に投稿したワークおよびワーク新規投稿ページに遷移するボタンが表示されません<br>
・ヘッダーに、ユーザー新規登録ページに遷移するボタンとログインページに遷移するボタンが表示されます<br>

[![Image from Gyazo](https://i.gyazo.com/d0959c18bde34447a59932e1394462db.gif)](https://gyazo.com/d0959c18bde34447a59932e1394462db)
・ログインをすると、ワーク新規投稿ページに遷移するボタンとユーザーが過去に投稿したワークが表示されます<br>
・表示順は、1)各テーブルは投稿日時を基準にして降順　2)テーブル内の各レコードは昇順
・また、レコードに右端にある「詳細を見る」をクリックすると、選択したワークの詳細ページに遷移します<br>

## ワーク新規投稿ページ
[![Image from Gyazo](https://i.gyazo.com/f88a939162017e59cbea0646b96d70ac.png)](https://gyazo.com/f88a939162017e59cbea0646b96d70ac)
・記入を促すための説明文を入れています<br>

[![Image from Gyazo](https://i.gyazo.com/29155ea8d27b44b88a40cfff6947d384.png)](https://gyazo.com/29155ea8d27b44b88a40cfff6947d384)
<br>・各選択肢の説明分を追加することで、認知行動療法になじみのないユーザーでも利用しやすいようにしています<br>

[![Image from Gyazo](https://i.gyazo.com/0593b97d71705705e6c8fb6d2daa6602.png)](https://gyazo.com/0593b97d71705705e6c8fb6d2daa6602)
<br>・ユーザーが参考にできるように、placeholderに記入例を記載しています<br>

## ワーク詳細ページ
[![Image from Gyazo](https://i.gyazo.com/4361a94263674fc0ab0167bf52f35b71.png)](https://gyazo.com/4361a94263674fc0ab0167bf52f35b71)
・編集ページに遷移するボタンと削除ボタンの色を分けることで、ユーザーが区別しやすいようにしています<br>

[![Image from Gyazo](https://i.gyazo.com/f3f884b74c86c1db387a77c1efd3fc49.gif)](https://gyazo.com/f3f884b74c86c1db387a77c1efd3fc49)
・また、削除前に確認ダイアログを表示させることで、ユーザーが意図しない削除が行われないようにしています<br>

## 編集ページ
[![Image from Gyazo](https://i.gyazo.com/e818297b004994e6d422928e6cc89242.png)](https://gyazo.com/e818297b004994e6d422928e6cc89242)
<br>・新規投稿ページとほぼ同じですが、説明文を削除することでよりシンプルにしています<br>


# 実装予定の機能

## 投稿一覧ページ関連
・表示したいワークを投稿日時で絞り込める機能<br>

## ユーザー関連
・ワークを継続して実行した日数を表示する機能

## テストコードの修正
・エラーメッセージを日本語表記に変更したため、テストコードも変更する必要あり

# データベース設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :works

## works テーブル

| Column                   | Type       | Options                        |
| ------------------------ | ---------- | ------------------------------ |
| user                     | references | null: false, foreign_key: true |
| automatic_thought        | text       | null: false                    |
| cognitive_distortion_id  | integer    | null: false                    |
| rational_thought         | text       | null: false                    |

### Association

- belongs_to :user

# 画面遷移図
![cbt-app.drawio](cbt-app.svg)

# 開発環境
・フロントエンド：HTML, CSS<br>
・バックエンド：Ruby<br>
・フレームワーク: Ruby on Rails（v7.0.8）<br>
・データベース（開発環境）：MySQL（v14.14）<br>
・データベース（本番環境）：PostgreSQL（v14.10）<br>
・バージョン管理：Git（v2.34.1）<br>
・パッケージ管理：Bundler<br>

# ローカルでの動作方法
セットアップ手順: 
1. リポジトリをクローンします（git clone https://github.com/Kinoken0413/cbt-app.git）
2. 必要なGemをインストールします（bundle install）
3. データベースを作成します（rails db:create）
4. マイグレーションを実行します（rails db:migrate）
5. サーバーを起動します（rails server）

# 工夫したポイント

## ユーザビリティの向上
・ユーザーの記入を促す指示文を作成しました<br>
・認知行動療法になじみのないユーザーのために、説明文を適宜追加しました<br>
・削除前に確認ダイアログを表示することで意図しない削除を防げるようにしました<br>
・エラーメッセージが日本語で表示されるように変更しました<br>

## プライバシーへの配慮
・パーソナルな内容を扱うため、ログインしているユーザー自身の投稿内容のみを表示する仕様にしました<br>

## ActiveHashの利用
・ワーク内の選択肢をActiveHashを用いて実装することで、コードの可読性を上げました<br>

# 改善点
・ユーザーをモチベートし、継続的にワークを実行していくための仕組みづくりが必要です<br>
・ワークの削除時のアラート表示や、指定した投稿日時のワークの表示など、ユーザビリティに改善余地があります<br>

# 制作期間
3週間
