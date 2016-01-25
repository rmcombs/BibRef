class ModernReferencesController < ApplicationController
  before_action :set_modern_reference, only: [:show, :edit, :update, :destroy]

  # GET /modern_references
  # GET /modern_references.json
  def index
    @modern_references = ModernReference.all
  end

  # GET /modern_references/1
  # GET /modern_references/1.json
  def show
  end

  # GET /modern_references/new
  def new
    @modern_reference = ModernReference.new
  end

  # GET /modern_references/1/edit
  def edit
  end

  # POST /modern_references
  # POST /modern_references.json
  def create
    @modern_reference = ModernReference.new(modern_reference_params)

    respond_to do |format|
      if @modern_reference.save
        format.html { redirect_to @modern_reference, notice: 'Modern reference was successfully created.' }
        format.json { render :show, status: :created, location: @modern_reference }
      else
        format.html { render :new }
        format.json { render json: @modern_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modern_references/1
  # PATCH/PUT /modern_references/1.json
  def update
    respond_to do |format|
      if @modern_reference.update(modern_reference_params)
        format.html { redirect_to @modern_reference, notice: 'Modern reference was successfully updated.' }
        format.json { render :show, status: :ok, location: @modern_reference }
      else
        format.html { render :edit }
        format.json { render json: @modern_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modern_references/1
  # DELETE /modern_references/1.json
  def destroy
    @modern_reference.destroy
    respond_to do |format|
      format.html { redirect_to modern_references_url, notice: 'Modern reference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modern_reference
      @modern_reference = ModernReference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modern_reference_params
      params.require(:modern_reference).permit(:location, :text, :date)
    end
end
