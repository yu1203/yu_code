class CriticismsController < ApplicationController
  before_action :set_criticism, only: [:show, :edit, :update, :destroy]

  # GET /criticisms
  # GET /criticisms.json
  def index
    @criticisms = Criticism.all
  end

  # GET /criticisms/1
  # GET /criticisms/1.json
  def show
  end

  # GET /criticisms/new
  def new
    @criticism = Criticism.new
  end

  # GET /criticisms/1/edit
  def edit
  end

  # POST /criticisms
  # POST /criticisms.json
  def create
    @criticism = Criticism.new(criticism_params)

    respond_to do |format|
      if @criticism.save
        format.html { redirect_to @criticism.course, notice: 'Criticism was successfully created.' }
        format.json { render :show, status: :created, location: @criticism }
      else
        format.html { render :new }
        format.json { render json: @criticism.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /criticisms/1
  # PATCH/PUT /criticisms/1.json
  def update
    respond_to do |format|
      if @criticism.update(criticism_params)
        format.html { redirect_to @criticism, notice: 'Criticism was successfully updated.' }
        format.json { render :show, status: :ok, location: @criticism }
      else
        format.html { render :edit }
        format.json { render json: @criticism.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /criticisms/1
  # DELETE /criticisms/1.json
  def destroy
    @criticism.destroy
    respond_to do |format|
      format.html { redirect_to criticisms_url, notice: 'Criticism was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_criticism
      @criticism = Criticism.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def criticism_params
      params.require(:criticism).permit(:content, :course_id)
    end
end
