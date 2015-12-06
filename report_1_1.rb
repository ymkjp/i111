module Calc extend self
    def swap(x = 0, y = 0)
      x = x + y
      y = x - y
      x = x - y
      return [x, y]
    end
end

if $0 == __FILE__
  p Calc.swap(3, 4)
  p Calc.swap(10, 12)
end
