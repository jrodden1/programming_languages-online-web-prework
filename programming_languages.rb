require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, langhash|
    langhash.each do |langName, typehash|
      typehash.each do |type, value|
        # binding.pry
        new_hash[langName] = {type => value}
        if new_hash[langName].has_key?(:style) == false
          new_hash[langName] = {:style => [style]}
        else
          new_hash[langName][:style] = new_hash[langName][:style] << style
        end
      end
    end
  end
  new_hash
end
