# require modules here
require 'pry'
require 'yaml'

def load_library(emoticons)
  # code goes here
  load_library = YAML.load_file('./lib/emoticons.yml')
  emoticons_hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }

   load_library.each do |key,value|
       emoticons_hash[:get_meaning][value[1]] = key
       emoticons_hash[:get_emoticon][value[0]] = value[1]
    #end
  end
  emoticons_hash
       #binding.pry
end

def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon)
  #code goes here
  emotions = load_library(file_path)
  
  emotions.each do |key, v|
    if key[v].include?(english_emoticon)
      v.value
    binding.pry
    end
    #binding.pry
  #use value to ID key and return 2 value

  
  #eng = load_library(english_emoticon)[:get_emoticon][english_emoticon]
  #eng
  #binding.pry
end

def get_english_meaning
  # code goes here
end








    
    
# def load_library
#   # code goes here
# end

# def get_japanese_emoticon
#   # code goes here
# end

# def get_english_meaning
#   # code goes here
# end