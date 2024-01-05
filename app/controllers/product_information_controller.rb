# app/controllers/product_information_controller.rb

class ProductInformationController < ApplicationController
  def new
    @existing_products = ItemList.all
  end

  def create
    date = params[:date]
    product_id = params[:product_id]
    quantity = params[:quantity]

    # Create a new ProductInfo instance and save it to the database
    product_info = ProductInfo.new(date: date, product_id: product_id, quantity: quantity)

    if product_info.save
      redirect_to '/', notice: 'Product information successfully saved.'
    else
      # Handle the case where saving fails (e.g., validation errors)
      flash[:alert] = 'Error saving product information.'
      render :new
    end
  end

  def retrieve_by_date
    # Retrieve data based on the date parameter
    date = params[:date]
    @product_information = ProductInfo.where(date: date)

    respond_to do |format|
      format.html { render partial: 'result_partial' } # Render a partial view
      format.json { render json: @product_information } # You can also render JSON
    end
  end

  def show_by_date
    # Retrieve data based on the date parameter
    date = params[:date]
    @product_information = ProductInfo.where(date: date)

    # Render the show_by_date view
    render :show_by_date
  end
end
