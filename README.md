# README
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :incomes
- has_many :expense

## incomesテーブル
|Column|Type|Options|
|------|----|-------|
|price|integer||
|date|integer||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :users
- belongs_to :category

## expenseテーブル
|Column|Type|Options|
|------|----|-------|
|price|integer||
|date|integer||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :users
- belongs_to :category


## categoryテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|income_id|integer|null: false, foreign_key: true|
|expens_id|integer|null: false, foreign_key: true|
### Association
- has_many :incomes
- has_many :expense
