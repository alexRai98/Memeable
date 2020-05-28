class Meme < ApplicationRecord
  belongs_to :category
  belongs_to :owner , class_name: "User"
end
