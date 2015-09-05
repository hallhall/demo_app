class UsesrsController < ApplicationController
  before_action :set_usesr, only: [:show, :edit, :update, :destroy]

  # GET /usesrs
  # GET /usesrs.json
  def index
    @usesrs = Usesr.all
  end

  # GET /usesrs/1
  # GET /usesrs/1.json
  def show
  end

  # GET /usesrs/new
  def new
    @usesr = Usesr.new
  end

  # GET /usesrs/1/edit
  def edit
  end

  # POST /usesrs
  # POST /usesrs.json
  def create
    @usesr = Usesr.new(usesr_params)

    respond_to do |format|
      if @usesr.save
        format.html { redirect_to @usesr, notice: 'Usesr was successfully created.' }
        format.json { render action: 'show', status: :created, location: @usesr }
      else
        format.html { render action: 'new' }
        format.json { render json: @usesr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usesrs/1
  # PATCH/PUT /usesrs/1.json
  def update
    respond_to do |format|
      if @usesr.update(usesr_params)
        format.html { redirect_to @usesr, notice: 'Usesr was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @usesr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usesrs/1
  # DELETE /usesrs/1.json
  def destroy
    @usesr.destroy
    respond_to do |format|
      format.html { redirect_to usesrs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usesr
      @usesr = Usesr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usesr_params
      params.require(:usesr).permit(:name, :email)
    end
end
