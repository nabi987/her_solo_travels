class Trip < ApplicationRecord
  belongs_to :user
  has_many :locations
  has_one_attached :photo
  validates :name, presence: true
  # validates :photo, presence: true
end
