def sorted? arr
  arr.each_cons(2).all? { |a, b| a <= b }
end

def shuffle arr
  for i in 0..arr.length()-1
    j = rand(arr.length())
    arr[i], arr[j] = arr[j], arr[i]
  end
end

array = [10, 2, 7, 4, 6, 1, 9, 0]
shuffle array until sorted? array
print array
