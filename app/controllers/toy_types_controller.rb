class ToyTypesController < ApplicationController
  before_action :set_toy_type, only: %i[ show edit update destroy ]

  # GET /toy_types or /toy_types.json
  def index
    @toy_types = ToyType.all
  end

  # GET /toy_types/1 or /toy_types/1.json
  def show
  end

  # GET /toy_types/new
  def new
    @toy_type = ToyType.new
  end

  # GET /toy_types/1/edit
  def edit
  end

  # POST /toy_types or /toy_types.json
  def create
    @toy_type = ToyType.new(toy_type_params)

    respond_to do |format|
      if @toy_type.save
        format.html { redirect_to toy_type_url(@toy_type), notice: "Toy type was successfully created." }
        format.json { render :show, status: :created, location: @toy_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @toy_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toy_types/1 or /toy_types/1.json
  def update
    respond_to do |format|
      if @toy_type.update(toy_type_params)
        format.html { redirect_to toy_type_url(@toy_type), notice: "Toy type was successfully updated." }
        format.json { render :show, status: :ok, location: @toy_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @toy_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toy_types/1 or /toy_types/1.json
  def destroy
    @toy_type.destroy

    respond_to do |format|
      format.html { redirect_to toy_types_url, notice: "Toy type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toy_type
      @toy_type = ToyType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def toy_type_params
      params.require(:toy_type).permit(:name, :description)
    end
end
