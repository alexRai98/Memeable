class Meme < ApplicationRecord
  self.inheritance_column = :_ # Disable STI 
  before_create :votes_comments_count_defauld
  belongs_to :category
  belongs_to :owner, foreign_key: :user_id , class_name: "User", counter_cache: true
  has_and_belongs_to_many :tags
  has_many :votes
  has_many :voters, through: :votes, source: :user
  has_many :comments
  validates :title, uniqueness: true, presence: true
  validates :source, presence: true
  validates :type, presence: true
  validates :source, format: { with: /\Ahttps:\/\/.+(.jpg|.png|.gif)\z/}

  enum type: {image: "image", gif: "gif"}

  private

  def votes_comments_count_defauld
    self.votes_count = 0
    self.comments_count = 0
  end 
end
