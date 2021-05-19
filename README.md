# Mulunch LP + Blog
こんにちは。このリポジトリは、日本全国の「村」について楽しく学べるコミュニティ、
むらんちのランディングページとブログサイトを掲載しています。ポートフォリオとして作成しています。

現在herokuで公開しています。
https://mulunchblog2.herokuapp.com/

## ランディングページ(2021年1〜3月)
ランディングページでは、HTML, CSS, Javascriptで基本的なWeb制作の学習を進めました。
<img width="1680" alt="スクリーンショット 2021-05-18 23 01 05" src="https://user-images.githubusercontent.com/66429478/118668365-c3083200-b82f-11eb-8c8c-647ec0369b2a.png">
<img width="1680" alt="スクリーンショット 2021-05-18 23 02 06" src="https://user-images.githubusercontent.com/66429478/118669761-fc8d6d00-b830-11eb-9b4d-4d0b6462d219.png">

企画やデザインの段階から、コミュニティのメンバーから意見をもらいながら進めていきました。
画像編集はillustratorやphotoshopを使用し、レイアウトはセクションごとのcontainerと
flexboxで大枠を作りました。仲間と作ったデザイン案にpx単位で近づけるようコーディングしています。

SEOやパフォーマンス、JavascriptとAPIの機能改善など、まだまだやる事は残っていますが、
このサイトの目的とする、むらんちというコミュニティへの参加に興味を持ってもらうという点で
最低限の品質が確保できたのではないかと現時点では考えております。

## ブログサイト(2021年3月〜5月)
ブログサイトでは、上記のLPでの学びをベースに、Ruby on Railsを利用してWeb開発の基礎を学びました。
<img width="1680" alt="スクリーンショット 2021-05-18 23 07 51" src="https://user-images.githubusercontent.com/66429478/118675249-67d93e00-b835-11eb-9445-202cb3f3ba83.png">
<img width="1680" alt="スクリーンショット 2021-05-19 0 20 54" src="https://user-images.githubusercontent.com/66429478/118678685-30b85c00-b838-11eb-9c14-56f58f802c33.png">

目的としては、ボランティア団体のオウンドメディアとして、食や地域に対してより興味・関心の高い
ユーザーに来訪してもらえるような、良質なコンテンツをストックしておける場所を作ることでした。

ベースはプログラミング学習サイトのSNSチュートリアルですが、Userをadministratorとguestのみに絞り、
それぞれに個別の権限、制限を加えてブログサイトとしました。
基本的なCRUD操作を学ぶため、Postモデルで記事の表示、投稿、編集、削除の機能を実装しています。
また、ボランティアのポータルサイトを参考に、カテゴリごとのviewや、そのナビゲーションリンク、いいね！機能や
SNSでのシェア機能も実装しています。こちらもまだまだ開発途中ですが、インフラやテスト、仮想環境やJavascriptの
ライブラリなど、より実務に近い技術を身につけていきます。

## バージョン情報
- Rails 6.1.3.1
- Ruby 2.7.2-p137

## 機能一覧
1. admin_user(管理者用)
- ユーザー登録
- ログイン／ログアウト(ゲストユーザーに自動ログイン)
- ユーザー情報の編集・削除
- いいね！作成／削除
- 新規投稿
- 投稿の編集・削除

2. guest_user（デフォルト）
- ユーザー情報・投稿表示
- 投稿の閲覧・詳細表示
- いいね！作成／削除

##　データベース
1. user
- name
- email
- created_at
- updated_at
- image_name
- password_digest
- picture

2. post
- id
- title
- content
- created_at
- updated_at
- user_id
- article1-5
- thumbnail1-5
- tag
- village_tag

引き続き、このリポジトリを実際にサービスとして使えるよう、ブラッシュアップしていきます。
ありがとうございました！
