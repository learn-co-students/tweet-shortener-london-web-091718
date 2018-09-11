# Write your code here.
def dict
  dict = {
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
end

def word_substituter(str)
  str.split.collect do |x|
    if dict.keys.include?(x.downcase)
      x = dict[x.downcase]
    else
      x
    end
  end.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(str)
  if str.length > 140
    word_substituter(str)
  else
    str
  end
end

def shortened_tweet_truncator(str)
  if word_substituter(str).length > 140
    word_substituter(str)[0..136] + "..."
  else
    str
  end
end