class Movie < ApplicationRecord
	has_attached_file :avatar, styles: { medium: "400x200>", thumb: "100x100>" }, default_url: "/assets/default.png"
	validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
