class ToysController < ApplicationController
  before_action :set_toy, only: %i[ show edit update destroy ]

  # GET /toys or /toys.json
  def index
    @toys = Toy.includes(:toy_type, :inventory).all
  end

  # GET /toys/1 or /toys/1.json
  def show
  end

  # GET /toys/new
  def new
    @toy = Toy.new
  end

  # GET /toys/1/edit
  def edit
  end

  # POST /toys or /toys.json
  def create
    @toy = Toy.new(toy_params)

    respond_to do |format|
      if @toy.save
        format.html { redirect_to toy_url(@toy), notice: "Toy was successfully created." }
        format.json { render :show, status: :created, location: @toy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @toy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toys/1 or /toys/1.json
  def update
    respond_to do |format|
      if @toy.update(toy_params)
        format.html { redirect_to toy_url(@toy), notice: "Toy was successfully updated." }
        format.json { render :show, status: :ok, location: @toy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @toy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toys/1 or /toys/1.json
  def destroy
    @toy.destroy

    respond_to do |format|
      format.html { redirect_to toys_url, notice: "Toy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toy
      @toy = Toy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def toy_params
      params.require(:toy).permit(:name, :description, :price, :toy_type_id)
    end
end
