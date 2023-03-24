module MyEnumerable
  def all?
    output = true
    @list.each do |num|
      output = false unless yield(num)
    end
    output
  end

  def any?
    output = false
    @list.each do |num|
      output = true if yield(num)
    end
    output
  end

  def filter
    output = []
    @list.each do |num|
      output.push(num) if yield(num)
    end
    output
  end
end
