## usersテーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
- has_many   :plans


## plansテーブル（アトラクション・ショー・パレード）
| Column             | Type    | Options                  |
| ------------------ | ------- | -------------------------|
| user_id            | integer | null: false              |
| park_id            | integer | null: false              | # 1:ランド, 2:シー（ActiveHash）
| date               | date    | null: false              |

### Association
- belongs_to :user
- has_many   :plan_steps


## plan_stepsテーブル
| Column             | Type    | Options                  |
| ------------------ | ------- | -------------------------|
| plan_id            | integer | null: false              |
| step_number        | integer | null: false              | # 行動の順番
| action_type_id     | integer | null: false              | # アトラクションに乗る,ショーを見る,食事,DPA取得など（ActiveHash）
| target_id          | integer | null: false              | # Attraction, Show, Parade, Restaurant のID（ActiveHash）
| time               | time    |                          | # 実施時刻（任意）
| note               | text    |                          | # 調整メモ（任意）

### Association
- belongs_to :plan



