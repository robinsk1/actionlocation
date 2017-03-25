class Location < ApplicationRecord
  acts_as_taggable_on :tags
  translates :name, :description, :strap
  validates :name, presence: true
  validates :description, presence: true
  validates :strap, presence: true

  active_admin_translates :name, :description, :strap do
    validates_presence_of :description, :strap
  end

  has_many :photos, :as => :imageable, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true
  scope :featured, -> { where(featured: true) }
  scope :banner, -> { where(banner: true) }
  scope :active, -> { where(active: true) }
  geocoded_by :full_address
  after_validation :geocode, if: ->(obj){ obj.full_address.present? and obj.street_address_1_changed? }

  def full_address
    [city, post_code, street_address_1].compact.join(", ")
  end

  def first_photo
    photos.first.image
  end
end
