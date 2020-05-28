class Meme < ApplicationRecord
  belongs_to :category
  belongs_to :owner , class_name: "User"
  has_and_belongs_to_many :tag
  has_many :votes
end
