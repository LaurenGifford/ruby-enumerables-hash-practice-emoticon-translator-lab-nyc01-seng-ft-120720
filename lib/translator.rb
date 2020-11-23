# require modules here

# require 'pry'
require "yaml"
def load_library(path)
  emoticons_lib = YAML.load_file(path)
  emoticons = {}
  emoticons["get_meaning"] = {} 
  emoticons["get_emoticon"] = {}
  emoticons_lib.each do |meaning, emojis|
    english = emojis[0]
    japanese = emojis[1]
    emoticons[meaning] = {:english => emojis[0], :japanese => emojis[1]}
    emoticons["get_meaning"][japanese] = meaning
    emoticons["get_emoticon"][english] = japanese
#    binding.pry
   end
#    binding.pry
  return emoticons
end

# hash = Hash[array.collect{|symbol| ["", symbol]}]
# mine: emoticons["get_meaning"][emojis[1]] = meaning
#       emoticons["get_emoticon"][emojis[0]] = emojis[1]

# ref1: emoji_hash["get_meaning"][emojis[1]] = word
#       emoji_hash["get_emoticon"][emojis[0]] = emojis[1]

# ref2: emoticon_hash["get_meaning"][emoticon_set.last] = english_word
#       emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last



def get_japanese_emoticon(path, emoticon)
  emojis = load_library(path)
  if emojis[emoticons]["get_emoticon"].has_key?(emoticon)
    emojis[emoticons]["get_emoticon"][emoticon]
  else "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  emojis = load_library(path)
  if emojis[emoticons]["get_meaning"].has_key?(emoticon)
    emojis[emoticons]["get_meaning"][emoticon]
  else "Sorry, that emoticon was not found"
  end
end