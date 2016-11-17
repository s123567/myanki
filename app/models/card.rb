class Card < ApplicationRecord
  validates :question, presence: true
  validates :answer, presence: true, unless: ->(card){card.picture.present?}
  validates :picture, presence: true, unless: ->(card){card.answer.present?}
  default_scope -> { order(created_at: :desc) }

  validates :tag_list, presence: true
  acts_as_taggable
  validates :frequence, inclusion: { in: %w(plus moyen moins), message: "%{value} n'est pas une fréquence valide" }
  mount_uploader :picture, PictureUploader
  validate :picture_size_validation, :if => "picture?"  
  validates_attachment_presence :datafile unless :datafile

  belongs_to :user

  private
    def picture_size_validation
      errors[:picture] << "Photo attachée doit être inférieure à 2MB, ici #{picture.size}" if picture.size > 2.megabytes
    end

      # Validates the size of an uploaded picture.
      # def picture_size
      #   if picture.size > 2.megabytes
      #     errors.add(:picture, "should be less than 2MB")
      #   end
      # end

end
