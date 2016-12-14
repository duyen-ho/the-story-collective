class Part < ApplicationRecord
  belongs_to :user
  belongs_to :story
  has_many :likes, dependent: :destroy

end
