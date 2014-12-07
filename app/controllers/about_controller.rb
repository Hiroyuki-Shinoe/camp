class AboutController < ApplicationController
  def index
  	if signed_in?
  		@storage = current_user.storages.build
  		@feed_storages = current_user.storages.paginate(page: params[:page])
  	end
  end
end
