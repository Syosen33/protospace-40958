# テーブル設計

## usersテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| name               | string | null: false |
| profile            | text   | null: false |
| occupation         | text   | null: false |
| position           | text   | null: false |

###Association
- has_many :prototypes_users
- has_many :prototypes, through: :prototypes_users
- has_many :comments


## prototypesテーブル
| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| catch_copy  | text       | null: false                    |
| concept     | text       | null: false,                   |
| user        | references | null: false, foreign_key: true |

###Association
- has_many :prototypes_users
- has_many :prototypes, through: :prototypes_users
- has_many :comments

## commentsテーブル
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| content       | text       |                                |
| prototype     | references | null: false, foreign_key: true |
| user          | references | null: false, foreign_key: true |

- belongs_to :prototypes
- belongs_to :user