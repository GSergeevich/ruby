animals = %w[cat dog tiger]

p animals.select {|beast| beast.include? "t"}