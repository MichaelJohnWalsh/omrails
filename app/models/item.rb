class Item < ApplicationRecord
  belongs_to :user

  validates :user, presence: 

  acts_as_votable
end
