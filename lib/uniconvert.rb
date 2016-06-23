module Uniconvert

  #
  # Convert the text in the file using one of the supported conversion handlers
  #
  # @converter   Symbol  The converter you'd like to use
  # @file        String  Path to the input file which contains the text you'd
  #                      like to convert
  # @create_file Bool    Flag to create a new file with the converted data
  #
  def self.to(converter, file, create_file = nil)
    create_file ||= true

    converter_obj = Uniconvert.const_get(converter).new(create_file)
    converter_obj.convert(file)
  end

end
