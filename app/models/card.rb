class Card < ApplicationRecord
  validates :question, presence: true
  validates :answer, presence: true, length: { maximum: 140 }
  acts_as_taggable
  validates :frequence, inclusion: { in: %w(plus moyen moins), message: "%{value} n'est pa sune fréquence valide" }


end
