local function isPrime(prime)
  for i = 2, math.sqrt(prime) do
    if prime % i == 0 then return false end
  end

  return true
end

return function(n)
  assert(n > 0, 'n must be positive integer')
  if n == 1 then return 2 end
  local prime = 1
  local count = 1
  while count < n do
    prime = prime + 2
    if(isPrime(prime)) then
        count = count + 1
     end
  end
  return prime
end