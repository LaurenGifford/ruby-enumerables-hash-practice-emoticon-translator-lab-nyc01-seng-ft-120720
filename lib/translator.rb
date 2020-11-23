# require modules here

require 'pry'
require "yaml"
def load_library(path)
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons_lib = YAML.load_file(path)
#  binding.pry
  emoticons_lib.each do |meaning, describe| 
    english = 
    japanese = 
    emoticons["get_meaning"] = meaning
    emoticons["get_emoticon"] = describe
 #  binding.pry
   describe.each do |emoticon|
     if emoticon == describe[0]
       binding.pry
       describe[:english] = emoticon
     end
       if emoticon == describe[1]
         describe[:japanese] = emoticon
       end
     end
  end
  emoticons
end

# hash = Hash[array.collect{|symbol| ["", symbol]}]
#return ex 
#emoticons = { emotion1 => {:english => translation, :japanese => translation}, emotion2 {}}



def get_japanese_emoticon(path, emoticon)
  emoji = load_library(path)
  # code goes here
end

def get_english_meaning(path, emoticon)
  emoji = load_library(path)
  # code goes here
end