# Write your code here.
def dictionary
  dic = {
    "hello" => "hi",
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter (str)
  subbed_words = []
  str.split.map do |word|                              #split string into array, iterate each word
    if dictionary.keys.include?(word.downcase)          #if any element in keys array include word
      subbed_words << dictionary[word.downcase]
    else
      subbed_words << word
    end
  end
  subbed_words.join(" ")
end

def bulk_tweet_shortener (arr)
  arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener (str)
  if str.length > 140
    word_substituter(str)
  else
    str
  end
end

def shortened_tweet_truncator (str)

  if word_substituter(str).length > 140
    word_substituter(str)[0..136] + "..."
  else
    str
  end
end
