class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :meme, counter_cache: true
  validates :body, presence: true
end
