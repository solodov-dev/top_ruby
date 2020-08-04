def fibs(step, seq = [0, 1])
  while step > 2 do
    seq << seq[-1] + seq[-2]
    step -= 1
  end
  seq;
end

def fibs_rec(step, seq = [0, 1])
  step === 2 ? seq : fibs_rec(step - 1, seq << seq[-1] + seq[-2])
end

p fibs(10)
p fibs_rec(10)