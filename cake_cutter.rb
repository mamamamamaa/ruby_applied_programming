require_relative 'common'
require_relative 'cake_slicer'

class CakeCutter
  include Common

  def initialize(cake)
    @cake = cake
  end

  def print_result(result)
    puts "Result:"

    result.each_with_index do |piece, index|
      puts "#{index + 1} cut: #{piece.join(", ")};"
    end
  end

  def cut_cake
    raisin_count = @cake.flatten.count(RAISIN_CHAR)
    cuts = generate_possible_cuts
    sorted_cuts = sort_cuts(cuts)

    result = []
    covered = Array.new(height) { Array.new(width, false) }

    sorted_cuts.each do |cut|
      x, y, w, h = cut
      if can_place_cut?(covered, x, y, w, h)
        result << add_cut_to_result(x, y, w, h)
        mark_covered_area(covered, x, y, w, h)
        break if result.size == raisin_count
      end
    end

    result
  end

  private

  def height
    @cake.size
  end

  def width
    @cake[0].size
  end

  def can_place_cut?(covered, x, y, w, h)
    !covered[y..y + h - 1].any? { |row| row[x..x + w - 1].any? }
  end

  def add_cut_to_result(x, y, w, h)
    CakeSlicer.new(@cake, x, y, w, h).slice_cake
  end

  def generate_possible_cuts
    (1..height).flat_map { |h|
      (1..width).flat_map { |w|
        (0..height-h).flat_map { |y|
          (0..width-w).select { |x|
            count_raisins(x, y, w, h) == 1
          }.map { |x| [x, y, w, h] }
        }
      }
    }
  end

  def sort_cuts(cuts)
    cuts.sort_by { |cut| -cut[2] }
  end

  def mark_covered_area(covered, x, y, w, h)
    (y..y + h - 1).each { |i|
      covered[i][x..x + w - 1] = [true] * w
    }
  end

  def count_raisins(x, y, w, h)
    @cake[y..y+h-1].map { |row| row[x..x+w-1].count(RAISIN_CHAR) }.sum
  end

  def generate_possible_vertical_cuts
    (1..width).flat_map { |w|
      (0..width-w).flat_map { |x|
        (1..height).flat_map { |h|
          (0..height-h).select { |y|
            count_raisins(x, y, w, h) == 1
          }.map { |y| [x, y, w, h] }
        }
      }
    }
  end

  def process_cuts(cuts, raisin_count)
    sorted_cuts = sort_cuts(cuts)

    result = []
    covered = Array.new(height) { Array.new(width, false) }

    sorted_cuts.each do |cut|
      x, y, w, h = cut
      if can_place_cut?(covered, x, y, w, h)
        result << add_cut_to_result(x, y, w, h)
        mark_covered_area(covered, x, y, w, h)
        break if result.size == raisin_count
      end
    end

    result
  end
end