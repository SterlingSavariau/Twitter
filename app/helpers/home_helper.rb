module HomeHelper
  # these methods can be in application helper or a library if used at more places in the app
  # this one is just a quick fix for the app breaking on a fresh install of github code

  # last message or placeholder
  #
  def last_tweet_message
    @last_tweet.blank? ? 'No Tweets yet.' : @last_tweet.message
  end
  
  # last tweet creation time or  placeholder
  #
  def last_tweet_created
    @last_tweet.blank? ? 'Awaiting first tweet.' : (distance_of_time_in_words_to_now(@last_tweet.created_at) + 'ago')
  end
end
