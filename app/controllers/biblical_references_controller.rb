class BiblicalReferencesController < ApplicationController
  before_action :set_biblical_reference, only: [:show, :edit, :update, :destroy]

  # GET /biblical_references
  # GET /biblical_references.json
  def index
    @biblical_references = BiblicalReference.all
  end

  # GET /biblical_references/1
  # GET /biblical_references/1.json
  def show
  end

  # GET /biblical_references/new
  def new
    @biblical_reference = BiblicalReference.new
  end

  # GET /biblical_references/1/edit
  def edit
  end

  # POST /biblical_references
  # POST /biblical_references.json
  def create
    @biblical_reference = BiblicalReference.new(biblical_reference_params)

    respond_to do |format|
      if @biblical_reference.save
        format.html { redirect_to @biblical_reference, notice: 'Biblical reference was successfully created.' }
        format.json { render :show, status: :created, location: @biblical_reference }
      else
        format.html { render :new }
        format.json { render json: @biblical_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biblical_references/1
  # PATCH/PUT /biblical_references/1.json
  def update
    respond_to do |format|
      if @biblical_reference.update(biblical_reference_params)
        format.html { redirect_to @biblical_reference, notice: 'Biblical reference was successfully updated.' }
        format.json { render :show, status: :ok, location: @biblical_reference }
      else
        format.html { render :edit }
        format.json { render json: @biblical_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biblical_references/1
  # DELETE /biblical_references/1.json
  def destroy
    @biblical_reference.destroy
    respond_to do |format|
      format.html { redirect_to biblical_references_url, notice: 'Biblical reference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biblical_reference
      @biblical_reference = BiblicalReference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biblical_reference_params
      params.require(:biblical_reference).permit(:location, :text)
    end
end
