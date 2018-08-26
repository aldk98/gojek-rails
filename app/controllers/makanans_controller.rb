class MakanansController < ApplicationController
  before_action :set_makanan, only: [:show, :edit, :update, :destroy]

  # GET /makanans
  # GET /makanans.json
  def index
    @makanans = Makanan.all
  end

  # GET /makanans/1
  # GET /makanans/1.json
  def show
  end

  # GET /makanans/new
  def new
    @makanan = Makanan.new
  end

  # GET /makanans/1/edit
  def edit
  end

  # POST /makanans
  # POST /makanans.json
  def create
    @makanan = Makanan.new(makanan_params)

    respond_to do |format|
      if @makanan.save
        format.html { redirect_to @makanan, notice: 'Makanan was successfully created.' }
        format.json { render :show, status: :created, location: @makanan }
      else
        format.html { render :new }
        format.json { render json: @makanan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /makanans/1
  # PATCH/PUT /makanans/1.json
  def update
    respond_to do |format|
      if @makanan.update(makanan_params)
        format.html { redirect_to @makanan, notice: 'Makanan was successfully updated.' }
        format.json { render :show, status: :ok, location: @makanan }
      else
        format.html { render :edit }
        format.json { render json: @makanan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /makanans/1
  # DELETE /makanans/1.json
  def destroy
    @makanan.destroy
    respond_to do |format|
      format.html { redirect_to makanans_url, notice: 'Makanan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_makanan
      @makanan = Makanan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def makanan_params
      params.fetch(:makanan, {})
    end
end
