class HomeController < ApplicationController

	before_filter :login_required

	def index
		@tweets = current_user.all_tweets
	end

end
