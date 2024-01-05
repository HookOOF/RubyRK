class Post < ApplicationRecord

	attr_accessor :title, :body, :image
	has_one_attached :image

end
