class Card < ApplicationRecord
  validates :question, presence: true
  validates :answer, presence: true, length: { maximum: 140 }


end
