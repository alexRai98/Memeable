class Meme < ApplicationRecord
  belongs_to :category
  belongs_to :owner , foreign_key: :user_id, class_name: "User"
  has_and_belongs_to_many :tags 
  has_many :votes
end
