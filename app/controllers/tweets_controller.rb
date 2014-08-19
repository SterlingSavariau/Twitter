class TweetsController < ApplicationController
  before_filter :login_required

	def create
		tweet = current_user.tweets.build(params[:tweet])
		tweet.created_at = Time.now #HACK
		tweet.save!
		redirect_to root_path
	end

	def destroy
		
	end

end
