# require modules here

require 'pry'
require "yaml"
def load_library(path)
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  original = YAML.load_file(path)
  binding.pry
  original.each do |meaning, describe| 
    emoticons[meaning] = describe
 #   binding.pry
      end
    end
 # binding.pry
  emoticons
end

# hash = Hash[array.collect{|symbol| ["", symbol]}]
#return ex 
#emoticons = { emotion1 => {:english => translation, :japanese => translation}, emotion2 {}}



def get_japanese_emoticon(path, emoticon)
  # code goes here
end

def get_english_meaning(path, emoticon)
  YAML.load_file(path)
  # code goes here
end