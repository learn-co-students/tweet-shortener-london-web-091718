require 'pry'

def word_substituter(tweet)
  words = tweet.split(" ")
  #split the strings (tweet) into an array
  shortened_tweet = []
  #created new empty array for the updated tweet to inject into

  words.each do |word|
  #for our array 'words' we iterate through, changing each string
  #in the array if one of the following conditions is met:
    case word.downcase
    #use 'case' rather than if elsif..
    when "hello"
      shortened_tweet << "hi"
    when "to", "too", "two"
      shortened_tweet << "2"
    when "for", "four"
      shortened_tweet << "4"
    when "be"
      shortened_tweet << "b"
    when "you"
      shortened_tweet << "u"
    when "at"
      shortened_tweet << "@"
    when "and"
      shortened_tweet << "&"
    else
      shortened_tweet << word
      #inject the new strings back into our shortened_tweet array
    end
  end
  shortened_tweet.join(" ")
  #change the array into a string
end

def bulk_tweet_shortener(tweets)
  tweets.each do |array_of_tweets|
    array_of_tweets = word_substituter(array_of_tweets)
    puts array_of_tweets
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size < 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? "#{tweet[0..139]}" : tweet
end
