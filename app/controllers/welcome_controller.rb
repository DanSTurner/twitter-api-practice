class WelcomeController < ApplicationController
  def index
    tweets = twitter_client.user_timeline(ENV["TWITTER_USER"])
    @tweets_text = tweets.map { |tweet| tweet.text }
  end
end
