# Mulunch Landing Page + Blog Site
こんにちは。このリポジトリでは、日本全国の「村」について楽しく学べるコミュニティ  
むらんちのランディングページと、ブログサイトを掲載しています。ポートフォリオとして作成しています。
  
現在herokuで公開しています。  
ランディングページ -> （https://mulunchblog2.herokuapp.com）  
ブログサイト -> (https://mulunchblog2.herokuapp.com/posts/index)
  
## ランディングページ（2021年2〜3月）
ランディングページでは、HTML, CSS, Javascriptで基本的なWeb制作の学習を進めました。
<img width="1680" alt="スクリーンショット 2021-05-18 23 01 05" src="https://user-images.githubusercontent.com/66429478/118668365-c3083200-b82f-11eb-8c8c-647ec0369b2a.png">
<img width="1680" alt="スクリーンショット 2021-05-18 23 02 06" src="https://user-images.githubusercontent.com/66429478/118669761-fc8d6d00-b830-11eb-9b4d-4d0b6462d219.png">
  
企画やデザインの段階から、コミュニティのメンバーから意見をもらいながら進めていきました。  
画像編集はIllustratorやPhotoshopを使用し、レイアウトはセクションごとの.containerクラスと  
Flexboxで大枠を作りました。仲間から貰ったデザイン案に可能な限り近づけるようコーディングしました。  
レスポンシブのワイヤーフレームは制作していなかったため、flexを解除していく形で自分で行いました。
Javascriptの理解のため、一部APIや配列のデータのやりとりや、それを元にしたDOM操作をして描画しています。
  
（共同制作のデザインカンプ）  
![C402D336-B5E0-440E-890F-673E249BEA04](https://user-images.githubusercontent.com/66429478/118952668-16e15b00-b997-11eb-95d1-092a0a1a173b.jpeg)
  
画像の加工からフルスクラッチに挑戦したことでまだまだ粗い点は残っていますが、  
このサイトの目的とする、むらんちへの参加に興味を持ってもらうという意味では  
なんとか最低限の品質が確保できたのではないかと判断し、次の技術に進むことにしました。  
  
## ブログサイト(2021年4月〜現在)
ブログサイトでは、LPでの学びをベースにRuby on Railsを利用してWeb開発の基礎を学びました。  
<img width="1680" alt="スクリーンショット 2021-05-18 23 07 51" src="https://user-images.githubusercontent.com/66429478/118675249-67d93e00-b835-11eb-9445-202cb3f3ba83.png">
<img width="1680" alt="スクリーンショット 2021-05-19 0 20 54" src="https://user-images.githubusercontent.com/66429478/118678685-30b85c00-b838-11eb-9c14-56f58f802c33.png">　　
　　
開発の目的としては、ボランティア団体のオウンドメディアとして、食や地域に対してより興味・関心の高い  
ユーザーに来訪してもらえるような、良質なコンテンツをストックしておける場所を作ることでした。  
  
ベースはプログラミング学習サイトのSNSチュートリアルですが、Userをadministratorとguestのみに絞り、  
それぞれに個別の権限、制限を加えてライターと読者のシンプルなブログサイトとしました。  
基本的なCRUD操作を学ぶため、Postモデルで記事の表示、投稿、編集、削除の機能を実装しています。  
  
また、ボランティアのポータルサイトを参考に、カテゴリごとのviewや、そのナビゲーションリンク、いいね！機能や  
SNSでのシェア機能も実装しています。足元ではS3でのファイル処理の実装中（表示のみ完了）、参考サイトをもとに機能や　　
デザインを整え、テストや仮想環境、CI/CDやIaasの利用、APIモードでのViewのReact化を目指し学習中です。　　
  
## バージョン情報
- Rails 6.1.3.1
- Ruby 2.7.2-p137
- Heroku 7.51.0 darwin-x64 node-v12.21.0
- PostgreSQL 13.2
- AWS S3 (現在ファイル表示のみ)

## 機能一覧
1. admin_user（管理者用）
- 新規ユーザー登録（機能制限中）
- ユーザー情報・投稿表示
- ログイン／ログアウト(ゲストユーザーに自動ログイン)
- ユーザー情報の編集・削除
- 投稿の閲覧・詳細表示
- 新規投稿
- 投稿の編集・削除
- いいね！作成／削除
- Twitter / Facebookでの投稿シェア

2. guest_user（デフォルト）
- ユーザー情報・投稿表示
- 投稿の閲覧・詳細表示
- いいね！作成／削除
- Twitter / Facebookでの投稿シェア

## データベース
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

3. like
- id
- user_id
- post_id
- created_at
- updated_at

## View一覧
1. home
- top ("/", むらんちのランディングページ)

2. users
- edit （"users/:id/edit", ユーザー情報編集画面） admin
- index （"users/index", ユーザー一覧画面）
- likes （"users/:id/likes", いいね！した投稿一覧）
- login_form （"login", ログイン画面）
- new （"signup", サインアップ画面） 機能制限中
- show （"users/:id", ユーザーの投稿一覧）

3. posts
- edit （"posts/:id/edit", 投稿編集画面）admin
- index （"posts/index", 投稿一覧画面、ブログサイトトップ）
- new （"posts/new", 新規投稿画面） admin
- show （"posts/:id", 投稿詳細画面）
- tag_muramusubi （"posts/tag_muramusubi", むらむすびについての投稿一覧）
- tag_villages （"posts/tag_villages", 全国の村についての投稿一覧）
- tag_ueno （"posts/tag_ueno", 上野村についての投稿一覧）
- tag_higashi_naruse （"posts/tag_higashi_naruse", 東成瀬村についての投稿一覧）
- tag_oshika （"posts/tag_oshika", 大鹿村についての投稿一覧）
  
引き続き、このリポジトリを実際にサービスとして使えるよう、ブラッシュアップしていきます。  
ご覧いただき、ありがとうございました。
