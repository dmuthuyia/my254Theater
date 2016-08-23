class Play < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :reviews

	has_attached_file :play_img, :styles => { :play_index => "250x350>", :play_show => "325x475>" }, :default_url => "/assets/images/my254def.jpg"
	validates_attachment_content_type :play_img, :content_type => /\Aimage\/.*\Z/
end
