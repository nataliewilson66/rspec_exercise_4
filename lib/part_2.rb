def proper_factors(num)
  fact_arr  = []
  (1...num).each do |factor|
    fact_arr << factor if num % factor == 0
  end
  fact_arr
end

def aliquot_sum(num)
  arr = proper_factors(num)
  arr.sum
end

def perfect_number?(num)
  if num  == aliquot_sum(num)
    return true
  end
  false
end

def ideal_numbers(n)
  ideal_arr = []
  int = 1
  while n > 0
    if perfect_number?(int)
      ideal_arr << int
      n -= 1
    end
    int += 1
  end
  ideal_arr
end