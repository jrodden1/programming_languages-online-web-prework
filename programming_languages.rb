require 'pry'
def get_styles

end

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, langhash|
    langhash.each do |langName, typehash|
      typehash.each do |type, value|
        binding.pry
        new_hash[langName] = {type => value}

      end
    end
  end

end
