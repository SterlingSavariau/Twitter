class HomeController < ApplicationController

	before_filter :login_required

	def index
		@tweets = current_user.all_tweets
		@last_tweet = current_user.tweets.last
	end

	def show
		@user = User.find_by_username(params[:username])
		@tweets = @user.all_tweets
	end

	def toggle_follow
		@user = User.find_by_username(params[:username])
		if current_user.is_friend? @user
		  current_user.remove_friend(@user)
		else
		  current_user.add_friend(@user)
		end 
		redirect_to user_tweets_path(@user.username)
	end

	def following
		@friends = current_user.friends
	end

	def remove_friend
		friend = User.find_by_username(params[:username])
		if friend
			current_user.remove_friend(friend)
			render :text => friend.username
		else
			render :text => "None"
		end
	end

	def search
		@q = params[:q]
		@users = User.find_by_search_query(@q)
	end
end
