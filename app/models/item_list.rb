class ItemList < ApplicationRecord
	belongs_to :user;
	validates :mg, numericality: { greater_than: 0 ,only_integer: true}
	validates :price, numericality: { greater_than: 0,only_integer: true }
end
