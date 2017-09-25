class TypeinmusController < ApplicationController
  before_action :set_typeinmu, only: [:show, :edit, :update, :destroy]

  # GET /typeinmus
  # GET /typeinmus.json
  def index
    @typeinmus = Typeinmu.all
  end

  # GET /typeinmus/1
  # GET /typeinmus/1.json
  def show
  end

  # GET /typeinmus/new
  def new
    @typeinmu = Typeinmu.new
  end

  # GET /typeinmus/1/edit
  def edit
  end

  # POST /typeinmus
  # POST /typeinmus.json
  def create
    @typeinmu = Typeinmu.new(typeinmu_params)

    respond_to do |format|
      if @typeinmu.save
        format.html { redirect_to @typeinmu, notice: 'Typeinmu was successfully created.' }
        format.json { render :show, status: :created, location: @typeinmu }
      else
        format.html { render :new }
        format.json { render json: @typeinmu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typeinmus/1
  # PATCH/PUT /typeinmus/1.json
  def update
    respond_to do |format|
      if @typeinmu.update(typeinmu_params)
        format.html { redirect_to @typeinmu, notice: 'Typeinmu was successfully updated.' }
        format.json { render :show, status: :ok, location: @typeinmu }
      else
        format.html { render :edit }
        format.json { render json: @typeinmu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typeinmus/1
  # DELETE /typeinmus/1.json
  def destroy
    @typeinmu.destroy
    respond_to do |format|
      format.html { redirect_to typeinmus_url, notice: 'Typeinmu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typeinmu
      @typeinmu = Typeinmu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typeinmu_params
      params.require(:typeinmu).permit(:name)
    end
end
