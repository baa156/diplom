class GraphicTypesController < ApplicationController
  before_action :set_graphic_type, only: [:show, :edit, :update, :destroy]

  # GET /graphic_types
  # GET /graphic_types.json
  def index
    @graphic_types = GraphicType.all
  end

  # GET /graphic_types/1
  # GET /graphic_types/1.json
  def show
  end

  # GET /graphic_types/new
  def new
    @graphic_type = GraphicType.new
  end

  # GET /graphic_types/1/edit
  def edit
  end

  # POST /graphic_types
  # POST /graphic_types.json
  def create
    @graphic_type = GraphicType.new(graphic_type_params)

    respond_to do |format|
      if @graphic_type.save
        format.html { redirect_to @graphic_type, notice: 'Graphic type was successfully created.' }
        format.json { render :show, status: :created, location: @graphic_type }
      else
        format.html { render :new }
        format.json { render json: @graphic_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graphic_types/1
  # PATCH/PUT /graphic_types/1.json
  def update
    respond_to do |format|
      if @graphic_type.update(graphic_type_params)
        format.html { redirect_to @graphic_type, notice: 'Graphic type was successfully updated.' }
        format.json { render :show, status: :ok, location: @graphic_type }
      else
        format.html { render :edit }
        format.json { render json: @graphic_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graphic_types/1
  # DELETE /graphic_types/1.json
  def destroy
    @graphic_type.destroy
    respond_to do |format|
      format.html { redirect_to graphic_types_url, notice: 'Graphic type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graphic_type
      @graphic_type = GraphicType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graphic_type_params
      params.require(:graphic_type).permit(:name)
    end
end
