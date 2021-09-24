# テーブル設計

## users テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| email                 | string     | null: false, unique: true      |
| encrypted_password    | string     | null: false                    |
| nickname              | string     | null: false, unique: true      |

### Association

- has_many :wants

## wants テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| name                  | string     | null: false                    |
| title                 | string     | null: false                    |

### Association

- belongs_to :user