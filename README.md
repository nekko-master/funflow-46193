## アプリケーション名
FUN FLOW

## アプリケーション概要
- ディズニーリゾート（初期はシー）の回り方を自動整理
- パス取得・アトラクション・食事などを最適な順序で提案

## URL
https://funflow-46193.onrender.com/

## テスト用アカウント
- Basic認証ID:admin
- Basic認証パスワード:2222
- メールアドレス:xxx@xxx.com
- パスワード:12345a

## 利用方法
1. テスト用アカウントでログイン（ユーザー新規登録を行い、テスト用アカウント以外でのログインも可能です）
2. 「プランを作成する」ボタンを押下
3. パーク名（現在はディズニーシーのみ対応）、パークに行く日付を選択し、「プラン作成」ボタンを押下
4. 「このプランで簡単診断する」ボタンを押下
5. 4つの質問（2択）に回答し、「診断する」ボタンを押下
6. 取得するのがおすすめなパスの内容などが表示されます

## アプリケーションを作成した背景
自分はディズニーリゾートに年に5回以上通っており、その際に朝一で何のパスを取るかなどの行動計画メモを作っています。
そのおかげで丸一日楽しく過ごすことができ、一緒に入園した方々からも「ディズニーでゆっくり食事できたのは初めて」「たくさんアトラクションに乗れた」「夜まで疲れなかった」などの声をいただいていました。
今のディズニーリゾートはルールが複雑で難しいという印象を持たれている方も多いですが、自分の体感では昔より入園者数もコントロールされていて、パスを使えばより快適にパークを楽しむことができると思います。
色んな方がよりパークを楽しむために、行動計画を立てるお手伝いができるように、このアプリを考えました。


## データベース設計
[![Image from Gyazo](https://i.gyazo.com/5250c2fba91d65408c081e33c1887942.png)](https://gyazo.com/5250c2fba91d65408c081e33c1887942)

### usersテーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

#### Association
- has_many   :plans


### plansテーブル（アトラクション・ショー・パレード）
| Column             | Type    | Options                  |
| ------------------ | ------- | -------------------------|
| user_id            | integer | null: false              |
| park_id            | integer | null: false              | # 1:ランド, 2:シー（ActiveHash）
| date               | date    | null: false              |

#### Association
- belongs_to :user
- has_many   :plan_steps


### plan_stepsテーブル
| Column             | Type    | Options                  |
| ------------------ | ------- | -------------------------|
| plan_id            | integer | null: false              |
| step_number        | integer | null: false              | # 行動の順番
| action_type_id     | integer | null: false              | # アトラクションに乗る,ショーを見る,食事,DPA取得など（ActiveHash）
| target_id          | integer | null: false              | # Attraction, Show, Parade, Restaurant のID（ActiveHash）
| time               | time    |                          | # 実施時刻（任意）
| note               | text    |                          | # 調整メモ（任意）

#### Association
- belongs_to :plan


