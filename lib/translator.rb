# require modules here

require 'pry'
require "yaml"
def load_library(path)
  feelings = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons_original = YAML.load_file(path)
#  binding.pry
  emoticons_original.each do |meaning, describe| 
    feelings["get_menaing"] = meaning
    feelings["get_emoticon"] = describe
   binding.pry
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