class SessionsController < ApplicationController
	def new
	end

	def create
		User = User.find_by(email: params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			sing_in user
			redirect_to user
		else
			flash.now[:error] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
		def destroy
			sign_out
			redirect_to root_url
		end
	end
end
