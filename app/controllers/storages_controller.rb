class StoragesController < ApplicationController
  before_action :set_storage, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  # GET /storages
  def index
    @storages = Storage.all
    if signed_in?
      @storage = current_user.storages.build
      @feed_storages = current_user.storages.paginate(page: params[:page])
    end
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
    @storage = current_user.storages.build(storage_params)
    if @storage.save
      flash[:success] = "文章は保存されました。"
      redirect_to "/mails/index2"
    else
      flash[:error] = "エラー！ 保存できる文章がありません。"
      redirect_to '/mails/index2'
    end
  end

  # PATCH/PUT /storages/1
  def update
    respond_to do |format|
      if @storage.update(storage_params)
        format.html { redirect_to @storage, notice: 'Storage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storages/1
  def destroy
    @storage.destroy
    redirect_to root_url
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

    def correct_user
      @storage = Storage.find_by(id: params[:id])
      redirect_to root_url unless current_user?(@storage.user)
    end
end
