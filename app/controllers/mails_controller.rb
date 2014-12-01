class MailsController < ApplicationController
	def index
		@subcategories = Subcategory.all
		@contents = Content.all
	end

	def show
	end
end