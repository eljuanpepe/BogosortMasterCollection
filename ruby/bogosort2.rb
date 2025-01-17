def sorted? arr
  arr.each_cons(2).all? { |a, b| a <= b }
end

array = [10, 2, 7, 4, 6, 1, 9, 0]
array.shuffle! until sorted? array
print array
