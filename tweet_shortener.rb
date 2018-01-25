# Write your code here.
def dictionary
  substitues = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  shorter_tweet = []
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      shorter_tweet << dictionary[word.downcase]
    else
      shorter_tweet << word
    end
  end
  shorter_tweet.join(" ")
end

def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each do |tweet|
    puts word_substituter(tweet)
  end
end
