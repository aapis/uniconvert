module Uniconvert
  class Setup

    def load_converters
      Dir['lib/uniconvert/converters/*'].each do |f|
        require_relative "../../#{f}"
      end
    end

    def execute_conversion
      str = Pathname.new(ARGV[0])

      if str.readable?
        Uniconvert.file_to(:HTML, str)
      else
        Notify.spacer
        Notify.success("Converted text below")
        Notify.spacer
        Notify.spit(Uniconvert.str_to(:HTML, str))
        Notify.spacer
      end
    end

  end
end