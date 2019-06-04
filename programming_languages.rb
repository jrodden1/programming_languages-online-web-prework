require 'pry'

def reformat_languages(languages)
  new_hash = {}

  #Create up blank hashes with all the language names inside of new_hash
  languages.each do |style, langhash|
    langhash.each do |langName, typehash|
      new_hash[langname] = {}
    end
  end
  binding.pry   

  languages.each do |style, langhash|
    langhash.each do |langName, typehash|
      typehash.each do |type, value|
        if new_hash[langName].has_key?(:type) == false
          new_hash[langName] = {:type => value}
        end
        if new_hash[langName].has_key?(:style) == false
          new_hash[langName][:style] = [style]
        else
          new_hash[langName][:style] = new_hash[langName][:style] << style
        end
      end
    end
  end
  new_hash
  binding.pry
end
