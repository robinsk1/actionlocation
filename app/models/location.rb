class Location < ApplicationRecord
  #attr_accessible :photos_attributes
  has_many :photos, :as => :imageable, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true
end
