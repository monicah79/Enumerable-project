require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(list)
    @list = list
  end

  def each
    (0...@list.length).each do |num|
      yield @list[num]
    end
  end
end
