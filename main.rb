require_relative 'cake_cutter'

cake = %w[....0... .0...... ......0. ..0.....]

cutter = CakeCutter.new(cake)

result = cutter.cut_cake

cutter.print_result(result)