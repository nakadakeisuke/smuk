# README
## usersテーブル

| Column            | Type       | 
Options                          |
| ---------------   | ---------- | -----------              |
| name              | string     | null: false              |
| email             | string     | null: false, unique: true|
| encrypted_password| string     | null: false              |

## Association
- 
- has_many  :sales

## salesテーブル

| Column            | Type       | 
Options                          |
| ---------------   | ---------- | -----------                   |
| price             | string     | null: false                   |
| clients           | references | null: false, foreign_key: true|

## Association
belongs_to :user
has_many   :menus
belongs_to :client

## clientsテーブル
| Column            | Type       | 
Options                          |
| ---------------   | ---------- | -----------                   |
| name              | string     | null: false                   |

## Association
- has_many :sales

## menusテーブル
| Column            | Type       | 
Options                          |
| ---------------   | ---------- | -----------                   |
| menu              | string     | null: false                   |

## Association
- belongs_to :clients