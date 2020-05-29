class Meme < ApplicationRecord

  #before_create :votes_comments_count_defauld

  belongs_to :category
  belongs_to :owner, foreign_key: :user_id , class_name: "User", counter_cache: true
  has_and_belongs_to_many :tags
  has_many :votes
  has_many :voters, trough: :votes, source: :user
  has_many :comments
  #has_many :commentators, trough: :comments, source: :user


  private

  def votes_comments_count_defauld
    self.votes_count = 0
    self.comments_count = 0
  end
end