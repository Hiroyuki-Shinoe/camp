class StoragesController < ApplicationController
  before_action :set_storage, only: [:show, :edit, :update, :destroy]

  # GET /storages
  def index
    @storages = Storage.all
  end

  # GET /storages/1
  def show
  end

  # GET /storages/new
  def new
    @storage = Storage.new
  end

  # GET /storages/1/edit
  def edit
  end

  # POST /storages
  def create
    @storage = Storage.new(storage_params)
    if @storage.save
      flash[:success] = "文章は保存されました。"
      redirect_to "/mails"
    else
      flash[:error] = "error！ 保存できる文章がありません。"
      redirect_to '/mails'
    end
  end

  # PATCH/PUT /storages/1
  def update
    if @storage.update(storage_params)
      redirect_to @storage, notice: 'Storage was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /storages/1
  def destroy
    @storage.destroy
    redirect_to storages_url, notice: 'Storage was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storage
      @storage = Storage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def storage_params
      params.require(:storage).permit(:content)
    end
end
