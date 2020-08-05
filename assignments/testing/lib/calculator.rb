class Calculator
  def add(*args)
    args.reduce(:+)
  end

  def multiply(*args)
    args.reduce(:*) 
  end
end