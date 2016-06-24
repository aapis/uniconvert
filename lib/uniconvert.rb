module Uniconvert

  #
  # Convert contents of a file using one of the supported conversion handlers
  #
  # @converter   Symbol  The converter you'd like to use
  # @file        String  Path to the input file which contains the text you'd
  #                      like to convert
  # @create_file Bool    Flag to create a new file with the converted data
  #
  def self.file_to(converter, file, create_file = false)
    converter_obj = Uniconvert.const_get(converter).new(create_file)
    converter_obj.convert_file(file)
  end

  #
  # Convert a string using one of the supported conversion handlers
  #
  # @converter   Symbol  The converter you'd like to use
  # @file        String  Path to the input file which contains the text you'd
  #                      like to convert
  # @create_file Bool    Flag to create a new file with the converted data
  #
  def self.str_to(converter, file, create_file = false)
    converter_obj = Uniconvert.const_get(converter).new(create_file)
    converted_str = converter_obj.convert_str(file)

    # copy to clipboard?
    # if system('type pbcopy')
    #   `echo "#{converted_str}" > /dev/null 2>&1 | pbcopy`
    # end
  end

end
