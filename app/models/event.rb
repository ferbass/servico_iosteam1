class Event < ActiveRecord::Base
  has_many :addresses
  belongs_to :category
  
  default_scope includes(:addresses)
  def serializable_hash(options = {})
    super include: :addresses
  end
  
end
