# app/controllers/calendar_controller.rb
class CalendarController < ApplicationController
  def save_product_information
    date = params[:date]
    product_info = params[:product_info]

    # Process product information, calculate prices, and save to the database
    # Example: Parse product_info and save to the database

    render json: { status: 'success' }
  end
  def get_existing_products
    # Fetch existing products from the item_list table
    existing_products = ItemList.all

    render json: existing_products
  end
end
