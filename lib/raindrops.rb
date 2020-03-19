require "raindrops/version"

module Raindrops
  class Convert_to_str
    FACTORS = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }.freeze

    def initialize(num)
      @num = num
    end

    def convert
      converting = ""
      FACTORS.map { |factor, output| converting += output if @num % factor == 0 }
      converting = converting.empty? ? @num.to_s : converting
    end
  end
end
