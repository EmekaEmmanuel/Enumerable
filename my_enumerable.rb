# frozen_string_literal: true


# class to create new  my list object
module MyEnumerable
  def all?
    arr = []

    list.each { |el| arr.push(el) if yield el }

    puts arr.length == list.length
  end

  def any?
    arr = []

    list.each { |el| arr.push(el) if yield el }

    puts !arr.empty?
  end

  def filter
    arr = []

    list.each { |el| arr.push(el) if yield el }

    puts arr
  end
end
