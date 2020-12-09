
i = "string"
def block(str) 
	yield str
end


block(i) { |i| puts i}