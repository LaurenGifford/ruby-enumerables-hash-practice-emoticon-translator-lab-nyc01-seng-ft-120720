# require modules here

require 'pry'
require "yaml"
def load_library(path)
  feelings = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons_original = YAML.load_file(path)
#  binding.pry
  emoticons_original.each do |meaning, describe| 
    feelings["get_meaning"] = meaning
    feelings["get_emoticon"] = describe
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
 # binding.pry
  feelings
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