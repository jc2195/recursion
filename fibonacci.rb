def fibs(num)
  result = [0, 1]
  counter = 1
  while counter < num
    result.push(result[counter-1] + result[counter])
    counter += 1
  end
  result
end

print fibs(10)

def fibs_rec(num)
  if num == 1
    [0, 1]
  else
    fibs_rec(num - 1).push(fibs_rec(num-1)[num-1] + fibs_rec(num-1)[num-2])
  end
end

print fibs_rec(10)
