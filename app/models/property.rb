class Property < ActiveRecord::Base
  belongs_to :agent
  belongs_to :property_type
  belongs_to :property_category
  belongs_to :city
  has_many :property_photos

  validates :name, :description, presence: true
  validates :rooms, :bathromms, :parking, presence: true, numericality: true

  mount_uploader :photo, PhotoUploader

  scope :with_category, -> (c) {
      where( property_category_id: c)
  }
  scope :with_type, -> (t){
    where( property_type_id: t)
  }

  scope :with_price, -> (p){
    where('price BETWEEN ? AND ?', p.split('/')[0], p.split('/')[1])
  }

  scope :with_city, -> (c){
    where(city_id: c)
  }

end
