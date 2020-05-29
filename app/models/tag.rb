class Tag < ApplicationRecord
    has_and_belongs_to_many :memes
    validates :name, uniqueness: true, presence: true
end
