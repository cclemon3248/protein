class Task < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :image, presence: true
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :store, presence: true
  validates :name, presence: true
  validates :protein, presence: true
  validates :calorie, presence: true
  validates :price, presence: true
end
