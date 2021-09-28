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
