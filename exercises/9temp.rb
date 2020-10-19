def cel2far(cel)
  (cel * 9/5) + 32
end

def far2cel(far)
  (far - 32) * 5/9
end

p cel2far(10)
p far2cel(451)
