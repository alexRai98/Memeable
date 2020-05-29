class Meme < ApplicationRecord
<<<<<<< HEAD

  #before_create :votes_comments_count_defauld

=======
  before_create :votes_comments_count_defauld
>>>>>>> d9b5e7af3108668cf1f4ef036dd1eeb81f441802
  belongs_to :category
  belongs_to :owner, foreign_key: :user_id , class_name: "User", counter_cache: true
  has_and_belongs_to_many :tags
  has_many :votes
  #has_many :voters, trough: :votes, source: :user
  has_many :comments
<<<<<<< HEAD
  #has_many :commentators, trough: :comments, source: :user

=======
  validates :title, uniqueness: true, presence: true
  validates :source, presence: true
>>>>>>> d9b5e7af3108668cf1f4ef036dd1eeb81f441802

  private

  def votes_comments_count_defauld
    self.votes_count = 0
    self.comments_count = 0
<<<<<<< HEAD
  end
end
=======
  end 
end
>>>>>>> d9b5e7af3108668cf1f4ef036dd1eeb81f441802
