require_relative './my_enumerable'

# class to create new  my list object
class MyList
  include MyEnumerable

  attr_accessor :list_s

  def initialize(*list_s)
    @lists = list_s
  end

  def each
    yield @lists
  end
end

list = MyList.new(1, 2, 3, 4)

list.each { |number| puts number }

list.all? { |number| number < 5 }
list.all? { |number| number > 5 }

list.any? { |number| number == 2 }
list.any? { |number| number == 5 }

list.filter(&:even?)
