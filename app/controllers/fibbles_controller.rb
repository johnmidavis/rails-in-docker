class FibblesController < ApplicationController
  before_action :set_fibble, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /fibbles
  # GET /fibbles.json
  def index
    @fibbles = Fibble.all
  end

  # GET /fibbles/1
  # GET /fibbles/1.json
  def show
  end

  # GET /fibbles/new
  def new
    @fibble = Fibble.new
  end

  # GET /fibbles/1/edit
  def edit
  end

  # POST /fibbles
  # POST /fibbles.json
  def create
    @fibble = Fibble.new(fibble_params)

    respond_to do |format|
      if @fibble.save
        format.html { redirect_to @fibble, notice: 'Fibble was successfully created.' }
        format.json { render :show, status: :created, location: @fibble }
      else
        format.html { render :new }
        format.json { render json: @fibble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fibbles/1
  # PATCH/PUT /fibbles/1.json
  def update
    respond_to do |format|
      if @fibble.update(fibble_params)
        format.html { redirect_to @fibble, notice: 'Fibble was successfully updated.' }
        format.json { render :show, status: :ok, location: @fibble }
      else
        format.html { render :edit }
        format.json { render json: @fibble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fibbles/1
  # DELETE /fibbles/1.json
  def destroy
    @fibble.destroy
    respond_to do |format|
      format.html { redirect_to fibbles_url, notice: 'Fibble was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fibble
      @fibble = Fibble.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fibble_params
      params.require(:fibble).permit(:title, :body)
    end
end
