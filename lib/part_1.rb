def my_reject(arr, &prc)
  new_arr = []
  arr.each do |elem|
    new_arr << elem if !prc.call(elem)
  end
  new_arr
end

def my_one?(arr, &prc)
  count = 0
  arr.each { |elem| count += 1 if prc.call(elem) }
  if count == 1
    return true
  end
  false
end

def hash_select(hash, &prc)
  new_hash = {}
  hash.each { |k, v| new_hash[k] = v if prc.call(k, v) }
  new_hash
end

def xor_select(arr, prc1, prc2)
  select_arr = []
  arr.each do |elem|
    select_arr << elem if (prc1.call(elem) && !prc2.call(elem)) || (!prc1.call(elem) && prc2.call(elem))
  end
  select_arr
end

def proc_count(val, proc_arr)
  count = 0
  proc_arr.each { |prc| count += 1 if prc.call(val) }
  count
end