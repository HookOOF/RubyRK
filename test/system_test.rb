require 'selenium-webdriver'

class Test < ApplicationSystemTestCase
	
	test 'grg' do
		visit root_path
		click_on 'Новый ресторан'
	end
end
