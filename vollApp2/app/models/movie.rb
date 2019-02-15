class Movie < ActiveRecord::Base
  belongs_to :category
  
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "120x170>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  
  paginates_per 3
end
