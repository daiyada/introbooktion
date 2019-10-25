# introbooktion DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|name_id|string|null: false|
### Association
- has_one :icon, dependent: :destroy
- has_many :likes, through :users_likes

## iconsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :user

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|tweet|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :tweet

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|content|string|null: false|
|user|references|null: false, foreign_key: true|
|category|references|null: false, foreign_key: true|
### Association
- has_many :likes
- has_many :comments
- has_many :images
- belongs_to :user
- belongs_to :category

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|tweet|references|null: false, foreign_key: true|
### Association
- belongs_to :tweet

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|string|null: false|
|tweet|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :tweet
- belongs_to :user

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|category|string|null: false|
### Association
- has_many :tweet