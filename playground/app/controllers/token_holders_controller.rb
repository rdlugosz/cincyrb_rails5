class TokenHoldersController < ApplicationController
  before_action :set_token_holder, only: [:show, :edit, :update, :destroy]

  # GET /token_holders
  # GET /token_holders.json
  def index
    @token_holders = TokenHolder.all
  end

  # GET /token_holders/1
  # GET /token_holders/1.json
  def show
  end

  # GET /token_holders/new
  def new
    @token_holder = TokenHolder.new
  end

  # GET /token_holders/1/edit
  def edit
  end

  # POST /token_holders
  # POST /token_holders.json
  def create
    @token_holder = TokenHolder.new(token_holder_params)

    respond_to do |format|
      if @token_holder.save
        format.html { redirect_to @token_holder, notice: 'Token holder was successfully created.' }
        format.json { render :show, status: :created, location: @token_holder }
      else
        format.html { render :new }
        format.json { render json: @token_holder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /token_holders/1
  # PATCH/PUT /token_holders/1.json
  def update
    respond_to do |format|
      if @token_holder.update(token_holder_params)
        format.html { redirect_to @token_holder, notice: 'Token holder was successfully updated.' }
        format.json { render :show, status: :ok, location: @token_holder }
      else
        format.html { render :edit }
        format.json { render json: @token_holder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /token_holders/1
  # DELETE /token_holders/1.json
  def destroy
    @token_holder.destroy
    respond_to do |format|
      format.html { redirect_to token_holders_url, notice: 'Token holder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_token_holder
      @token_holder = TokenHolder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def token_holder_params
      params.require(:token_holder).permit(:name, :token)
    end
end
