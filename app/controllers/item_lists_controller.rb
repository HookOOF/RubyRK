  class ItemListsController < ApplicationController
    before_action :set_item_list, only: %i[ show edit update destroy ]
    before_action :authenticate_user!, except: [:index, :show]
    before_action :correct_user, only: [:destroy]
    # GET /item_lists or /item_lists.json
    def index
      @item_lists = ItemList.all
    end

    # GET /item_lists/1 or /item_lists/1.json
    def show
    end
    def item_params
      params.require(:item_list).permit(:prod_name, :mg, :price, custom_columns: [])
    end
    # GET /item_lists/new
    def new
    @item_list = current_user.item_lists.build
  end
   def correct_user
    @item_list = current_user.item_lists.find_by(id: params[:id])
    redirect_to item_lists_path, notice: "Not Authorized To Edit This item" if @item_list.nil?
  end

    # GET /item_lists/1/edit
    def edit
    end
    def save_quantity
      # Save the quantity information to your backend
      # Example code (you need to adapt this based on your actual model and attributes)
      start_date = params[:start]
      end_date = params[:end]
      quantity = params[:quantity]
      render json: { status: 'success' }
    end
    def retrieve_quantities
      # Retrieve the quantity information from your backend
      # Example code (you need to adapt this based on your actual model and attributes)
      start_date = params[:start]
      end_date = params[:end]

      # Retrieve the quantities based on the date range
      # Example code assuming you have a Quantity model
      # quantities = Quantity.where('start_date >= ? AND end_date <= ?', start_date, end_date)

      # Respond with the retrieved quantities as JSON
      render json: { quantities: quantities }
    end
    # POST /item_lists or /item_lists.json
    def create
      @item_list = ItemList.new(item_list_params)

      respond_to do |format|
        if @item_list.save
          format.html { redirect_to item_lists_path, notice: "Item list was successfully created." }
          format.json { render :show, status: :created, location: @item_list }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @item_list.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /item_lists/1 or /item_lists/1.json
    def update
      respond_to do |format|
        if @item_list.update(item_list_params)
          format.html { redirect_to item_list_url(@item_list), notice: "Item list was successfully updated." }
          format.json { render :show, status: :ok, location: @item_list }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @item_list.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /item_lists/1 or /item_lists/1.json
    def destroy
      @item_list.destroy!

      respond_to do |format|
        format.html { redirect_to item_lists_url, notice: "Item list was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_item_list
        @item_list = ItemList.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def item_list_params
        params.require(:item_list).permit(:prod_name, :mg, :price,:user_id)
      end
  end
