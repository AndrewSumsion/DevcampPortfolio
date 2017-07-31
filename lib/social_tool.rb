module SocialTool
  def self.twitter_search
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "ccYRvhjQ0NUEkzl4kgxnnoUN0"
      config.consumer_secret     = "XbYh7F830THdHAfNy9d1ze8nepKpkHqNsb0sPYSm71DkIVItRT"
      config.access_token        = "892062676133834752-uQ3XmPjd7kGhsYPXH5dfGk2U9NzoBX0"
      config.access_token_secret = "rq05tJMc9hv8YkxrTXVPf2rkhBBrGTkCRZEJMMltfE3VO"
    end

    client.search("#coding", result_type: 'recent').take(6).collect do |tweet|
      "#{tweet.user.screen_name}: #{tweet.text}"
    end
  end
end 