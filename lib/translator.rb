# require modules here

#require 'pry'
require "yaml"
def load_library(path)
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons_lib = YAML.load_file(path)
  emoticons_lib.each do |meaning, emojis|
    eng, jap = emojis
    emoticons["get_meaning"][jap] = meaning
    emoticons["get_emoticon"][eng] = jap
     end
 #   binding.pry
  emoticons
end

# hash = Hash[array.collect{|symbol| ["", symbol]}]
#      eng, jan = describe
#     emoticons["get_meaning"][jan] = meaning
#     emoticons["get_emoticon"][eng] = jan
#return ex 
#emoticons = { emotion1 => {:english => translation, :japanese => translation}, emotion2 {}}



def get_japanese_emoticon(path, emoticon)
  emoji = load_library(path)
  if emoticons
  else "Sorry, that emoticon was not found"
  end
  # code goes here
end

def get_english_meaning(path, emoticon)
  emoji = load_library(path)
  if emoticons
  else "Sorry, that emoticon was not found"
  end
  # code goes here
end