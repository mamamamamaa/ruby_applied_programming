class BadMatchTable
  attr_reader :pattern
  attr_reader :table

  def initialize(pattern)
    @pattern = pattern
    @table = {}
    (0...pattern.size).each { |i|
      @table[pattern[i]] = pattern.size - 1 - i
    }
  end

  def slide_offset(mismatch_char)
    table.fetch(mismatch_char, pattern.size)
  end
end

def boyer_moore(text, pattern)
  table = BadMatchTable.new(pattern)
  i = pattern.size - 1
  while i < text.size
    (0...pattern.size).each { |j|
      if text[i - j] != pattern[pattern.size - 1 - j]
        i += table.slide_offset(text[i - j])
        break
      elsif j == pattern.size - 1
        return i - j
      end
    }
  end
  -1
end

text = "Просто рандомний текст що я вигадав за пару секунд"
pattern = "вигадав"

index = boyer_moore(text, pattern)

if index != -1
  puts "Підстрока знайдена з індексу: #{index}"
else
  puts "Підстрока не знайдена"
end