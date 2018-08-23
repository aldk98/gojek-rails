class MinumenController < ApplicationController
  before_action :set_minuman, only: [:show, :edit, :update, :destroy]

  # GET /minumen
  # GET /minumen.json
  def index
    @minumen = Minuman.all
  end

  # GET /minumen/1
  # GET /minumen/1.json
  def show
  end

  # GET /minumen/new
  def new
    @minuman = Minuman.new
  end

  # GET /minumen/1/edit
  def edit
  end

  # POST /minumen
  # POST /minumen.json
  def create
    @minuman = Minuman.new(minuman_params)

    respond_to do |format|
      if @minuman.save
        format.html { redirect_to @minuman, notice: 'Minuman was successfully created.' }
        format.json { render :show, status: :created, location: @minuman }
      else
        format.html { render :new }
        format.json { render json: @minuman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minumen/1
  # PATCH/PUT /minumen/1.json
  def update
    respond_to do |format|
      if @minuman.update(minuman_params)
        format.html { redirect_to @minuman, notice: 'Minuman was successfully updated.' }
        format.json { render :show, status: :ok, location: @minuman }
      else
        format.html { render :edit }
        format.json { render json: @minuman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minumen/1
  # DELETE /minumen/1.json
  def destroy
    @minuman.destroy
    respond_to do |format|
      format.html { redirect_to minumen_url, notice: 'Minuman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minuman
      @minuman = Minuman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minuman_params
      params.fetch(:minuman, {})
    end
end
