class Meme < ApplicationRecord
  self.inheritance_column = :_ # Disable STI
  belongs_to :category
  belongs_to :owner , foreign_key: :user_id, class_name: "User"
  has_and_belongs_to_many :tags 
  has_many :votes
  enum type: { image: "image", gif: "gif"}
  validates :source, presence: true
  validates :type, presence: true
end
