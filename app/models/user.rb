class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_create :memes_count_defauld
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, uniqueness: true, presence: true       
  has_many :votes, :dependent => :destroy 
  has_many :memes, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  private

  def memes_count_defauld
    self.memes_count = 0
  end

end


