class Home < ApplicationRecord
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :price, presence: true

  has_many :favorites, dependent: :destroy
  belongs_to :created_by, class_name: "User"

  include ImageUploader[:image]

  def can_user_edit?(user)
    created_by == user
  end

  def can_user_destroy?(user)
    created_by == user
  end

  def square_meterage
    square_footage.to_i * 0.093
  end
end
