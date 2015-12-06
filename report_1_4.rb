class Pair
  attr_accessor :stack

  def initialize
    @stack = []
  end

  def self.validate(string)
    validator = self.new
    begin
      string.split(//).map{|ch|
        validator.add(ch)
      }
    rescue => e
      return "'%s' is invalid because of %s." % [string, e.message,]
    else
      return "'%s' is valid." % string
    end
  end

  def add(char)
    case char
      when '('
        @stack.push(char)
      when ')'
        popped = @stack.pop
        raise 'wrong pair' unless popped === '('
      else
        raise 'unexpected character %s.' % char
    end
  end
end

if $0 == __FILE__
  puts Pair::validate('()()')
  puts Pair::validate('()(()))()')
end
