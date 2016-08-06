class Mem < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://pochmurno.republika.pl/foto/cumulus_4.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
  

