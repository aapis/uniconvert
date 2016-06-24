module Uniconvert
  class HTML
    attr_accessor :encoder

    def initialize(should_create_file = true)
      @create_file = should_create_file
      @encoder = HTMLEntities.new
    end

    def convert_file(file)
      begin
        file_contents = File.read(file)
        converted = @encoder.encode(file_contents, :named)

        if @create_file
          translated_file_name = file + '.converted'

          File.open(translated_file_name, 'w+') do |f|
            f.write converted
          end

          `$EDITOR #{translated_file_name}`
        end

        converted.nil?
      rescue Errno::EISDIR
        false
      end
    end

    def convert_str(str)
      @encoder.encode(str, :named)
    end

  end
end