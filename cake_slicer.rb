require_relative 'common'

class CakeSlicer
  include Common

  def initialize(cake, x, y, w, h)
    @cake = cake
    @x, @y, @w, @h = x, y, w, h
  end

  def slice_cake
    @cake[@y..@y+@h-1].map { |row| row[@x..@x+@w-1] }
  end
end