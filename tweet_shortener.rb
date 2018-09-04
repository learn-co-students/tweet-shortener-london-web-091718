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

  tweet.each_char do |word|
    if word.to_s.include?(sub.keys)
     puts "jhfc"
    
    end
  end
end  