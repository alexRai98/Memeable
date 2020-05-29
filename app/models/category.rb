class Category < ApplicationRecord
  has_many :memes
  validates :name, uniqueness: true, presence: true
end
