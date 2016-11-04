class Card < ApplicationRecord
  validates :question, presence: true
  validates :answer, length: { maximum: 140 }
  validates :tag_list, presence: true
  acts_as_taggable
  validates :frequence, presence: true, inclusion: { in: %w(plus moyen moins), message: "%{value} n'est pa sune fréquence valide" }
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
