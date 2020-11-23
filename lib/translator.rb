# require modules here

#require 'pry'
require "yaml"
def load_library(path)
  emoticons_lib = YAML.load_file(path)
  emoticons = {}
  emoticons["get_meaning"] = {}, 
  emoticons["get_emoticon"] = {}
  emoticons_lib.each do |meaning, emojis|

    emoticons["get_meaning"][emojis[1]] = meaning
    emoticons["get_emoticon"][emojis[0]] = emojis[1]
     end
 #   binding.pry
  emoticons
end

# hash = Hash[array.collect{|symbol| ["", symbol]}]
#      eng, jan = describe
#     emoticons["get_meaning"][jan] = meaning
#     emoticons["get_emoticon"][eng] = jan

# emoji_hash["get_meaning"][emojis[1]] = word
# emoji_hash["get_emoticon"][emojis[0]] = emojis[1]

# emoticon_hash["get_meaning"][emoticon_set.last] = english_word
#  emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last

#emoticons = { emotion1 => {:english => translation, :japanese => translation}, emotion2 {}}



def get_japanese_emoticon(path, emoticon)
  emojis = load_library(path)
  if emojis["get_emoticon"].has_key?(emoticon)
    emojis["get_emoticon"][emoticon]
  else "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  emojis = load_library(path)
  if emojis["get_meaning"].has_key?(emoticon)
    emojis["get_meaning"][emoticon]
  else "Sorry, that emoticon was not found"
  end
end