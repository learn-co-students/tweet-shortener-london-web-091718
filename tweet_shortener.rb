require 'pry'
 sub = {

  "hello" => "hi",
  "to" => "2", 
  "two" => "2", 
  "too" => "2", 
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}

def word_substituter(tweet)
  
  sub = {
  "hello" => "hi",
  "to" => "2", 
  "two" => "2", 
  "too" => "2", 
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }

split_tweet = []

  tweet.split.each do |word|
    if sub.has_key? word
      split_tweet.push(sub[word])
    else
      split_tweet.push(word)
    end
  end
  split_tweet.join(" ")
end


def bulk_tweet_shortener(array_tweets)
  
  sub = {
  "hello" => "hi",
  "to" => "2", 
  "two" => "2", 
  "too" => "2", 
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
  
split_tweet = []

array_tweets.each do |tweet|
  tweet.split.each do |word|
    if sub.has_key? (word.downcase)
      split_tweet.push(sub[word.downcase])
    else
      split_tweet.push(word)
    end
  end
  puts split_tweet.join(" ")
  split_tweet = []
end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
     word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = selective_tweet_shortener(tweet)
  if short_tweet.length >= 140
  
  
end