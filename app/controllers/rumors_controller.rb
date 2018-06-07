class RumorsController < ApplicationController
  before_action :set_rumor, only: [:show, :edit, :update, :destroy]

  # GET /rumors
  # GET /rumors.json
  def index
    @rumors = Rumor.all
  end

  # GET /rumors/1
  # GET /rumors/1.json
  def show
  end

  # GET /rumors/new
  def new
    @rumor = Rumor.new
  end

  # GET /rumors/1/edit
  def edit
  end

  # POST /rumors
  # POST /rumors.json
  def create
    @rumor = Rumor.new(rumor_params)

    respond_to do |format|
      if @rumor.save
        format.html { redirect_to @rumor, notice: 'Rumor was successfully created.' }
        format.json { render :show, status: :created, location: @rumor }
      else
        format.html { render :new }
        format.json { render json: @rumor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rumors/1
  # PATCH/PUT /rumors/1.json
  def update
    respond_to do |format|
      if @rumor.update(rumor_params)
        format.html { redirect_to @rumor, notice: 'Rumor was successfully updated.' }
        format.json { render :show, status: :ok, location: @rumor }
      else
        format.html { render :edit }
        format.json { render json: @rumor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rumors/1
  # DELETE /rumors/1.json
  def destroy
    @rumor.destroy
    respond_to do |format|
      format.html { redirect_to rumors_url, notice: 'Rumor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rumor
      @rumor = Rumor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rumor_params
      params.require(:rumor).permit(:title, :body)
    end
end
