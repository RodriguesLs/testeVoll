class Movie < ActiveRecord::Base
    
    has_attached_file :picture, styles: { medium: "300x300>", thumb: "120x170>" }, default_url: "/public/404.html"
    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
