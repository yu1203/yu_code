class HikikomorisController < ApplicationController
  before_action :set_hikikomori, only: [:show, :edit, :update, :destroy]

  def index
    @hikikomoris = Hikikomori.all
  end

  def show
  end

  def update
    respond_to do |format|
      if @hikikomori.update(hikikomori_params)
        format.html { redirect_to @hikikomori, notice: 'Hikikomori was successfully updated.' }
        format.json { render :show, status: :ok, location: @hikikomori }
      else
        format.html { render :edit }
        format.json { render json: @hikikomori.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @hikikomori.destroy
    respond_to do |format|
      format.html { redirect_to hikikomoris_url, notice: 'Hikikomori was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hikikomori
      @hikikomori = Hikikomori.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hikikomori_params
      params[:hikikomori]
    end
end
