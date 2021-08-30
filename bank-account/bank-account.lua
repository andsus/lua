local BankAccount = {}

function BankAccount:new()
  local account = {_amount = 0, _isOpened = true}
  return setmetatable(account, { __index = self })
end

function BankAccount:balance()
  return self._amount
end

function BankAccount:deposit(amount)
  assert(self._isOpened)
  assert(amount > 0)
  self._amount = self._amount + amount
end

function BankAccount:withdraw(amount)
  assert(self._isOpened)
  assert(amount > 0)
  assert(self._amount > amount)
  self._amount = self._amount - amount
end

function BankAccount:close(amount)
  self._isOpened = false
end


return BankAccount