# frozen_string_literal: true

require "z3"

module Year2024
  class Day13 < Solution
    def data
      @data ||= @input.split("\n\n").map {_1.scan(/\d+/).map(&:to_i) }
    end

    def solver(ax, ay, bx, by, px, py)
      solve = Z3::Solver.new
      a = Z3::Int("a")
      b = Z3::Int("b")

      solve.assert(a>= 0)
      solve.assert(b>= 0)
      solve.assert(ax * a + bx * b == px)
      solve.assert(ay * a + by * b == py)

      return nil unless solve.satisfiable?

      [solve.model[a].to_i, solve.model[b].to_i]
    end

    def part_1
      button_presses = data.map { |ax, ay, bx, by, px, py| solver(ax, ay, bx, by, px, py) }.compact
      button_presses.map {_1*3 + _2*1}.sum
    end

    def part_2
      button_presses = data.map { |ax, ay, bx, by, px, py| solver(ax, ay, bx, by, (px + 10000000000000), (py + 10000000000000)) }.compact
      button_presses.map {_1*3 + _2*1}.sum
    end

  end
end
