class Property < ApplicationRecord
  has_many_attached :pictures

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :bedroom, presence: true
  validates :bathroom, presence: true
end
