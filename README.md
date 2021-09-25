# テーブル設計

## users テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| email                 | string     | null: false, unique: true      |
| encrypted_password    | string     | null: false                    |
| nickname              | string     | null: false, unique: true      |

### Association

- has_many :wishes
- has_many :comments

## wishes テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| title                 | string     | null: false                    |
| user                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| text                  | text       | null: false                    |
| user                  | references | null: false, foreign_key: true |
| wish                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :wish