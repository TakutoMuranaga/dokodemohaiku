# どこでも俳句

### サイト概要

ユーザー同士で俳句を評価しあうレビューサイトです。
ユーザー同士で作った俳句について語り合えるようにレビューだけでなくコメントで話せるようにしています。
俳句をレビューする際は星5段階評価で行います。
自分の作った俳句を星でいっぱいになるよう目指しましょう。

### テーマを選んだ理由

俳句を気軽に楽しめるようなサイトがなかったのでゲーム感覚で楽しめるサイトを作りたいと思ったからです。

### ターゲットユーザー

自身の俳句を人に共有したい方や、お気に入りの俳句を見つけたい方や俳句仲間を作りたい方。

### 主な利用シーン

旅行先や日常で俳句を思いついた時や、人の俳句を読みたい時など。俳句を探す際は星が多いのを見ることで面白いものに出会いやすいです。

### 開発環境

* Cloud9

#### バックエンド

* ruby 3.1.2

* Rails 6.1.6.1

#### フロントエンド

* HTML

* SCSS

#### gem

* bootstrap

* Font Awesome

* devise

### 主な機能

#### ユーザー

* ユーザーの会員登録、ログイン・ログアウト、退会機能。
* ユーザーはログイン時、メールアドレスとパスワードで行います。
* ユーザーがログインしている状態かどうか、ページのヘッダーにユーザ名を表示するなどして判断できます。
* サイトの閲覧はログインなしで行えます。
* ユーザーは投稿画面から自身が作った俳句をジャンルを指定して投稿できます。
* マイページにて自身の過去の投稿の閲覧、編集、削除ができます。
* 投稿一覧から他のユーザーの投稿の閲覧、評価、レビューを書く、またはそのレビューにコメントを残すことができます。
* ユーザーのフォローができ、自身や他のユーザーのフォローしてる人、フォロワーを確認できます。

#### 管理ユーザー

* 管理者用メールアドレスとパスワードでログインできます。
* 俳句の題材の作成、編集ができます。
* ユーザーの投稿・コメント・レビューの削除、ユーザーの退会処理。
