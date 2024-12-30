# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Year2024::Day13 do
  let(:input) { File.read(File.join(File.dirname(__FILE__), "../../../challenges/2024/13/input.txt")) }
  let(:example_input) do
    <<~EOF
    Button A: X+94, Y+34
    Button B: X+22, Y+67
    Prize: X=8400, Y=5400
    
    Button A: X+26, Y+66
    Button B: X+67, Y+21
    Prize: X=12748, Y=12176
    
    Button A: X+17, Y+86
    Button B: X+84, Y+37
    Prize: X=7870, Y=6450
    
    Button A: X+69, Y+23
    Button B: X+27, Y+71
    Prize: X=18641, Y=10279
    EOF
  end


  describe "part 1" do
    it "returns 480 for the example input" do
      expect(described_class.part_1(example_input)).to eq(480)
    end

    it "returns 39996 for my input" do
      expect(described_class.part_1(input)).to eq(39996)
    end
  end

  describe "part 2" do
    let(:example_input) do
      <<~EOF
      Button A: X+94, Y+34
      Button B: X+22, Y+67
      Prize: X=10000000008400, Y=10000000005400
    
      Button A: X+26, Y+66
      Button B: X+67, Y+21
      Prize: X=10000000012748, Y=10000000012176
    
      Button A: X+17, Y+86
      Button B: X+84, Y+37
      Prize: X=10000000007870, Y=10000000006450
    
      Button A: X+69, Y+23
      Button B: X+27, Y+71
      Prize: X=10000000018641, Y=10000000010279
      EOF
    end
    it "returns nil for the example input" do
      # no example answer was provided
      expect(described_class.part_2(example_input)).to eq(0)
    end

    it "returns nil for my input" do
      expect(described_class.part_2(input)).to eq(73267584326867)
    end
  end
end
