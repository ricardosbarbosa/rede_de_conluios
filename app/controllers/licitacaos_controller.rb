class LicitacaosController < ApplicationController
  before_action :set_licitacao, only: [:show, :edit, :update, :destroy]

  # GET /licitacaos
  # GET /licitacaos.json
  def index
    @licitacaos = Licitacao.all
  end

  # GET /licitacaos/1
  # GET /licitacaos/1.json
  def show
  end

  # GET /licitacaos/new
  def new
    @licitacao = Licitacao.new
  end

  # GET /licitacaos/1/edit
  def edit
  end

  # POST /licitacaos
  # POST /licitacaos.json
  def create
    @licitacao = Licitacao.new(licitacao_params)

    respond_to do |format|
      if @licitacao.save
        format.html { redirect_to @licitacao, notice: 'Licitacao was successfully created.' }
        format.json { render :show, status: :created, location: @licitacao }
      else
        format.html { render :new }
        format.json { render json: @licitacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /licitacaos/1
  # PATCH/PUT /licitacaos/1.json
  def update
    respond_to do |format|
      if @licitacao.update(licitacao_params)
        format.html { redirect_to @licitacao, notice: 'Licitacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @licitacao }
      else
        format.html { render :edit }
        format.json { render json: @licitacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /licitacaos/1
  # DELETE /licitacaos/1.json
  def destroy
    @licitacao.destroy
    respond_to do |format|
      format.html { redirect_to licitacaos_url, notice: 'Licitacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_licitacao
      @licitacao = Licitacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def licitacao_params
      params.require(:licitacao).permit(:tipo, :data, :valor, :descricao)
    end
end
