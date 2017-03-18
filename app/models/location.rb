class Location < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :strap, presence: true

  has_many :photos, :as => :imageable, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true
  scope :featured, -> { where(featured: true) }
  scope :banner, -> { where(banner: true) }
  scope :active, -> { where(active: true) }
end
