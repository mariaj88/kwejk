class Mem < ActiveRecord::Base
  belongs_to :user
  
  scope :get_active, -> {where active: true}
   scope :get_inactive, -> {where active: false}
  
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://pochmurno.republika.pl/foto/cumulus_4.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
  # def self.get_active
  #   Mem.where(active: true)
  # end
  
end
  

