class MailsController < ApplicationController
	def index
		@subcategories = Subcategory.all
		@contents = Content.all
		@storage = Storage.new
	end

	def index2
		@subcategories = Subcategory.all
		@contents = Content.all
		@storage = Storage.new
	end

	def show
	end
end