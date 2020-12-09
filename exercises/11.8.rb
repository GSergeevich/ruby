class User
  def set_fullname(args)
    @name,@surname,@patronymic = *args
  end

  def set_rating(rating)
    @rating = rating.to_i
  end

  attr_reader :rating
  attr_reader :name
  attr_reader :surname
  attr_reader :patronymic

end

pupils = []
alphabet = *('a'..'z')

10.times do
  fullname = {name: "", surname: "",patronymic: ""}
  fullname.keys.each do |key|
  	rand(5..10).times do
  	  fullname[key] << alphabet[rand(26)]
  	end
  	fullname[key].capitalize!
  end    

  pupil = User.new
  pupil.set_fullname(fullname.values)
  pupil.set_rating(rand(1..5))
  pupils << pupil
end
  	
mid = pupils.reduce(0) {|m,pupil| pupil.rating  + m } / pupils.length
pupils.select {|p| p.rating > mid }.each {|p|  p "#{p.name} #{p.surname} #{p.patronymic}"}





       
