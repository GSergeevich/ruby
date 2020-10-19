class User

  def sname
    puts "Введите имя:"
    @name = gets.chomp
  end

  def ssurname
    puts "Введите фамилию:"
    @surname = gets.chomp
  end

  def spatronymic
    puts "Введите отчество:"
    @patronymic = gets.chomp
  end

  attr_reader :name

  attr_reader :surname

  attr_reader :patronymic

end

users = Array.new(3) {User.new}

users.each do |usr|
  usr.sname
  usr.spatronymic
  usr.ssurname
end

users.each do |usr|
  puts usr.name
  puts usr.patronymic
  puts usr.surname
end

