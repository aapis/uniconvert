module Uniconvert
  def self.to_html(file, create_file = true)
    coder = HTMLEntities.new
    non_latin_strings = File.read(file)
    translated_file_name = file + '.converted'
    converted = coder.encode(non_latin_strings, :named)

    if create_file
      File.open(translated_file_name, 'w+') do |f|
        f.write converted
      end

      `$EDITOR #{translated_file_name}`
    end

    converted.nil?
  end
end
