class PropertyPhoto < ActiveRecord::Base

  belongs_to :property
  mount_uploader :source, PhotoUploader
end
