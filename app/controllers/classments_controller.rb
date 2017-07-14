class ClassmentsController < ApplicationController
  before_action :set_classment, only: [:show, :edit, :update, :destroy]

  # GET /classments
  # GET /classments.json
  def index
    @classments = Classment.all
  end

  # GET /classments/1
  # GET /classments/1.json
  def show
  end

  # GET /classments/new
  def new
    @classment = Classment.new
  end

  # GET /classments/1/edit
  def edit
  end

  # POST /classments
  # POST /classments.json
  def create
    @classment = Classment.new(classment_params)

    respond_to do |format|
      if @classment.save
        format.html { redirect_to @classment, notice: 'Classment was successfully created.' }
        format.json { render :show, status: :created, location: @classment }
      else
        format.html { render :new }
        format.json { render json: @classment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classments/1
  # PATCH/PUT /classments/1.json
  def update
    respond_to do |format|
      if @classment.update(classment_params)
        format.html { redirect_to @classment, notice: 'Classment was successfully updated.' }
        format.json { render :show, status: :ok, location: @classment }
      else
        format.html { render :edit }
        format.json { render json: @classment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classments/1
  # DELETE /classments/1.json
  def destroy
    @classment.destroy
    respond_to do |format|
      format.html { redirect_to classments_url, notice: 'Classment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classment
      @classment = Classment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classment_params
      params.require(:classment).permit(:name, :mobileno, :born)
    end
end
