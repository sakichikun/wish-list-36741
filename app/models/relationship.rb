class Relationship < ApplicationRecord
  belongs_to :follower, class_name: "User" #Userテーブルのレコードを参照する
  belongs_to :followed, class_name: "User"
end
