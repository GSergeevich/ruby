def ipv4?(addr)
  addr = addr.split('.')
  return false if addr.length < 4
  addr.each do |octet|
    return false if !(0..255).include?(octet.to_i)
  end
  return true
end

p ipv4?('10.16.16.7')
p ipv4?('10.16.16999.7')
