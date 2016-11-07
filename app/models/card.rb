class Card < ApplicationRecord
  validates :question, presence: true
  validates :answer, presence: true, unless: ->(card){card.picture.present?}
  validates :picture, presence: true, unless: ->(card){card.answer.present?}
  default_scope -> { order(created_at: :desc) }

  validates :tag_list, presence: true
  acts_as_taggable
  validates :frequence, inclusion: { in: %w(plus moyen moins), message: "%{value} n'est pas une fréquence valide" }
  mount_uploader :picture, PictureUploader
  validate :picture_size
  belongs_to :user

  private

      # Validates the size of an uploaded picture.
      def picture_size
        if picture.size > 2.megabytes
          errors.add(:picture, "should be less than 2MB")
        end
      end

end
