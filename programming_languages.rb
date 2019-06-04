def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, langhash|
    langhash.each do |langName, typehash|
      typehash.each do |type, value|
        new_hash[:langName][:type] = value
        new_hash[:langName][:style] = style
      end
    end
  end

end
