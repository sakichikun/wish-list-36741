# アプリケーション名
I WANNA eat SALMON

# アプリケーションの概要
ログイン機能・投稿機能・投稿編集機能・投稿詳細機能・投稿削除機能・ユーザー編集機能  
コメント機能・投稿検索機能・いいね機能・いいねランキング機能・フォロー機能・ページネーション機能  
画像のスライドショー機能・ポップアップ励まし機能  

# URL
https://wish-list-36741.herokuapp.com/

# テスト用アカウント
Basic認証 ID：kitty  
Basic認証 password：1111  
ログインアドレス：test@com  
ログインpassword：a111111  

# 利用方法
バケットリストを共有するSNSです。  
バケットリストとは、死ぬまでに挑戦したいことを書き出すものです。  
本アプリケーションでは、思いついたタイミングで投稿することができ、  
またいいね機能やコメント機能を用いて共に成し遂げる仲間を探すことにも役立ちます。  

# 目指した課題解決
平凡な毎日を過ごしている人に対し、より豊かな人生経験をするためのアプリケーションです。  
挑戦したいことがあった時、自分1人で成し遂げることが難しいことがあります。  
仲間がいれば、1歩を踏み出す力が湧くと考えます。  
そんな仲間を見つけるため、またアイディアをもらうことも、達成後の画像からエネルギーをもらうことも可能だと考えます。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1ljGomuHRVDNKeBgkONZBU39k71Yc8GwV3jfOLzQeMDQ/edit#gid=282075926

# 実装した機能
### ログイン機能
[![Image from Gyazo](https://i.gyazo.com/2dfc01d214eab39988e5600218448faa.png)](https://gyazo.com/2dfc01d214eab39988e5600218448faa)

### 投稿機能
・写真を添付しなくても投稿できます  
・バケットリストの状態を選択する必要があります  
(want：基本、soon：実現の明確な予定が決まったら、done：達成できたら)  
・状態は編集ページより変更が可能です  
[![Image from Gyazo](https://i.gyazo.com/af3a1588773ff28c566a50ce6a1f4d9d.gif)](https://gyazo.com/af3a1588773ff28c566a50ce6a1f4d9d)

### 詳細表示機能
・画像を投稿していればこちらのページで閲覧ができます  
・詳細ページで投稿へのコメントができます  
[![Image from Gyazo](https://i.gyazo.com/b673417eccda842644c41f5d57c94064.gif)](https://gyazo.com/b673417eccda842644c41f5d57c94064)

### コメント機能
・1件以上の投稿があれば、投稿一覧が表示されます  
・コメントの投稿者は自分の投稿を消すことができます  
[![Image from Gyazo](https://i.gyazo.com/a2d93be5a8b7742177e3b0099fe0be26.gif)](https://gyazo.com/a2d93be5a8b7742177e3b0099fe0be26)

### 絞り込み検索機能
・バケットリストの状態ごと（want/soon/done）に限定表示ができます  
・さらに検索ワードをかけて絞り込むことができます  
[![Image from Gyazo](https://i.gyazo.com/caf8c1bee7da2bd7c68b5deb45ae77dd.gif)](https://gyazo.com/caf8c1bee7da2bd7c68b5deb45ae77dd)

### いいね機能
・自分も挑戦したいと共感するバケットリストがあればいいね機能で知らせることができます  
・いいねの数は右横にすぐに反映されます  
・自分が投稿した場合はいいね一覧を見ることができます  
[![Image from Gyazo](https://i.gyazo.com/d2ffb5e568d1ecc696d7cf0d123e7545.gif)](https://gyazo.com/d2ffb5e568d1ecc696d7cf0d123e7545)

### いいねランキング機能
・いいねの数が多い順に3つのバケットリストを知ることができます  
・ランクインしたバケットリストを参考に新しいアイディアを考えることを期待します  
[![Image from Gyazo](https://i.gyazo.com/a8fc8bb07d022cac97fbfe5650d6265d.gif)](https://gyazo.com/a8fc8bb07d022cac97fbfe5650d6265d)

### フォロー機能
・友達や知り合いをフォローすることで特定のユーザーの投稿を見たいときに探しやすくなります  
[![Image from Gyazo](https://i.gyazo.com/1494fd4c09959b06cfd507cf7a062a2a.gif)](https://gyazo.com/1494fd4c09959b06cfd507cf7a062a2a)

### 自己紹介文表示機能
・自己紹介文を表示することでユーザーの特定を容易にします  
・あくまでも補足情報であるため、表示・非表示の設定をしました  
[![Image from Gyazo](https://i.gyazo.com/6e1ceef89b4623b87bb73613e733caac.gif)](https://gyazo.com/6e1ceef89b4623b87bb73613e733caac)

### 画像スライドショー機能
・スライドショーを流すことで新たなアイディアを考える手がかりとなることを期待します  
・スライドショーはボタンで再生・停止を切り替えます  
[![Image from Gyazo](https://i.gyazo.com/4a23221dbd0cfd5943f69b013919f289.gif)](https://gyazo.com/4a23221dbd0cfd5943f69b013919f289)

### ポップアップ励まし機能
・何にも挑戦したくないときに、ほっこり笑える仕掛けを作りました  
・文字をクリックすると、ある「熱い」Webページへ遷移します  
[![Image from Gyazo](https://i.gyazo.com/4a8b690f9fe65c1df8883c595bfa05c7.gif)](https://gyazo.com/4a8b690f9fe65c1df8883c595bfa05c7)

# 課題・今後実装したい機能
・投稿を編集する際に元の画像が表示されるようにしたいです  
・JavaScriptのクリック範囲の適用が指定した要素内でできるようにしたいです  
・絞り込み検索の際に、検索ワードのみでも結果が表示されるようにしたいです  
・いいねランキングを月間にしたいです  
・ランキングをdoneの数順にしたいです  
・スライドショーに表示する画像をユーザーが投稿したdoneの中からランダムに表示させたいです  
・z-indexで重なりの調整を試みましたが、思い通りの表示ができなかったため改善したいです  

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/215b99aec8ecf2c88a18cdb5338fc01b.png)](https://gyazo.com/215b99aec8ecf2c88a18cdb5338fc01b)

# 開発環境
Ruby/HTML/CSS/jQuery/JavaScript  
Ruby on Rails/MySQL/Git/GitHub  

# テーブル設計

## users テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| email                 | string     | null: false, unique: true      |
| encrypted_password    | string     | null: false                    |
| nickname              | string     | null: false                    |
| introduction          | text       |                                |

### Association

- has_many :wishes
- has_many :comments
- has_many :likes

## wishes テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| title                 | string     | null: false                    |
| state_id              | integer    | null: false                    |
| user                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_many :likes

## comments テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| text                  | text       | null: false                    |
| user                  | references | null: false, foreign_key: true |
| wish                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :wish

## likes テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| user                  | references | null: false, foreign_key: true |
| wish                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :wish

## relationships テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| follower_id           | integer    | null: false                    |
| followed_id           | integer    | null: false                    |
