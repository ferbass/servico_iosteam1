class Place < ActiveRecord::Base
  has_many :addresses
  belongs_to :category
  default_scope includes(:addresses)
  mount_uploader :photo, PhotoUploader
  def serializable_hash(options = {})
    super include: :addresses
  end
end
