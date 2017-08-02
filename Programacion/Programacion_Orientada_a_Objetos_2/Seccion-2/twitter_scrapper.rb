require 'open-uri'
require 'nokogiri'
require 'net/https'

class TwitterScrapper

  def initialize(url)
    @url = Nokogiri::HTML(open(url,{ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE}))	
  end

  def extract_username
  	@url.at_css('.ProfileHeaderCard-nameLink').inner_text.strip
  end

    def extract_stats
    tweets    = @url.at_css('.ProfileNav-value').text.strip
    following = @url.at_css('.ProfileNav-item--following').css('.ProfileNav-stat').css('.ProfileNav-value').inner_text.strip
    followers = @url.at_css('.ProfileNav-item--followers').css('.ProfileNav-stat').css('.ProfileNav-value').inner_text.strip
    favorites = @url.at_css('.ProfileNav-item--favorites').css('.ProfileNav-stat').css('.ProfileNav-value').inner_text.strip
    "Stats: Tweets: #{tweets}, Siguiendo: #{following}, Seguidores: #{followers}, Favoritos: #{favorites}"
  end

  def extract_tweets
  	tweets = @url.css('.stream').css('.stream-items').css('.js-stream-item').css('.tweet').css('.content')
      tweets.each do |row|
  	    puts "\n"
        puts "#{row.css('.stream-item-header').css('.account-group').css('.FullNameGroup').css('.fullname').inner_text.strip}"
    	puts "#{row.css('.stream-item-header').css('.time').css('.tweet-timestamp').css('._timestamp').text} #{row.css('.js-tweet-text-container').text}"
    	puts "#{row.css('.stream-item-footer').css('.ProfileTweet-actionCountList').css('.ProfileTweet-action--retweet').text.strip} #{row.css('.stream-item-footer').css('.ProfileTweet-actionCountList').css('.ProfileTweet-action--favorite').text.strip}"
     end
  end

end
scrapper = TwitterScrapper.new(ARGV.join)
print "\n"
print "Username: #{scrapper.extract_username}"
print "\n"
puts "-------------------------------------------------------------------------------------------"
print scrapper.extract_stats
print "\n"
puts "-------------------------------------------------------------------------------------------"
print "\n"
puts "Tweets:"
print scrapper.extract_tweets    
print "\n"