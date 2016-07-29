class EncontrosController < ApplicationController
  before_action :set_encontro, only: [:show, :edit, :update, :destroy]

  # GET /encontros
  # GET /encontros.json
  def index
    @encontros = Encontro.all
  end

  # GET /encontros/1
  # GET /encontros/1.json
  def show
  end

  # GET /encontros/new
  def new
    @encontro = Encontro.new
  end

  # GET /encontros/1/edit
  def edit
  end

  # POST /encontros
  # POST /encontros.json
  def create
    @encontro = Encontro.new(encontro_params)

    respond_to do |format|
      if @encontro.save
        format.html { redirect_to @encontro, notice: 'Encontro was successfully created.' }
        format.json { render :show, status: :created, location: @encontro }
      else
        format.html { render :new }
        format.json { render json: @encontro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encontros/1
  # PATCH/PUT /encontros/1.json
  def update
    respond_to do |format|
      if @encontro.update(encontro_params)
        format.html { redirect_to @encontro, notice: 'Encontro was successfully updated.' }
        format.json { render :show, status: :ok, location: @encontro }
      else
        format.html { render :edit }
        format.json { render json: @encontro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encontros/1
  # DELETE /encontros/1.json
  def destroy
    @encontro.destroy
    respond_to do |format|
      format.html { redirect_to encontros_url, notice: 'Encontro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encontro
      @encontro = Encontro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encontro_params
      params.require(:encontro).permit(:titulo, :descricao, :tema, :inicio_inscricoes, :fim_inscricoes, :inicio_encontro, :fim_encontro, :valor, :quant_max)
    end
end
