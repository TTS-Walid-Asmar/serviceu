class InventoriesController < ApplicationController
    before_action :find_inventory, only: [:show, :edit, :update, :destroy]

    before_action :authenticate_user!

  # GET /inventories
  # GET /inventories.json

    def index
        @inventories = Inventory.all
#        if params[:category].blank?
#            @inventories = Inventory.where(category_id: @category_id).order("created_at DESC")
#        end#        if params[:category].blank?
#            @inventories = Inventory.all.order("created_at DESC")
#        else
#            @category_id = Category.find_by(name: params[:category]).id
#
    end

#    def choice
#            @category_id = Category.find_by(name: params[:category]).id
#            @inventories = Inventory.where(category_id: @category_id).order("created_at DESC")
#        end
  # GET /inventories/1
  # GET /inventories/1.json
  def show
  end

  # GET /inventories/new
  def new
    @inventory = Inventory.new
  end

  # GET /inventories/1/edit
  def edit
  end

  # POST /inventories
  # POST /inventories.json
  def create
    @inventory = Inventory.new(inventory_params)

    respond_to do |format|
      if @inventory.save
        format.html { redirect_to @inventory, notice: 'Inventory was successfully created.' }
        format.json { render :show, status: :created, location: @inventory }
      else
        format.html { render :new }
        format.json { render json: @inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventories/1
  # PATCH/PUT /inventories/1.json
  def update
    respond_to do |format|
      if @inventory.update(inventory_params)
        format.html { redirect_to @inventory, notice: 'Inventory was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventory }
      else
        format.html { render :edit }
        format.json { render json: @inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventories/1
  # DELETE /inventories/1.json
  def destroy
    @inventory.destroy
    respond_to do |format|
      format.html { redirect_to inventories_url, notice: 'Inventory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory
      @inventory = Inventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_params
        params.require(:inventory).permit(:title, :description, :condition, :price, :isbn, :item_image, :user_id, :category_id)
    end
end
