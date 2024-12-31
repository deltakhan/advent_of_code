# frozen_string_literal: true
module Year2024
  class Day25 < Solution

    def data
      @data ||= @input.split("\n\n").map(&:split)
    end

    def lock?(schematic)
      true if schematic[0] == "#####" && schematic[6] == "....."
    end

    def pin_height(schematic)
      schematic.map(&:chars).transpose.map { |column| column.join.count("#") }
    end

    def part_1
      locks = []
      keys = []

      data.each do |schematic|
        if lock?(schematic)
          locks << pin_height(schematic[1...7])
        else
          keys << pin_height(schematic[0...6])
        end
      end
      locks.sum do |lock|
        keys.count do |key|
          lock.zip(key).all? { |pin| pin.sum <= 5 }
        end
      end
    end

    def part_2
      nil
    end
  end
end
