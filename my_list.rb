# frozen_string_literal: true

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
