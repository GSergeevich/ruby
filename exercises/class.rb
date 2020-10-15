##
# Create user with description methods 
#
#
# = Usage example: 
# usr = User.new
#
# usr.fio 
#
# usr.profession
#
#
#
class User
  @@count = 0
  ##
  #Revolucioneers count
  #
  def counter
    @@count
  end

  ##
  #Set revolucioneers count 
  #
  def set_count(count)
    @@count = count
  end
  
  ##
  #Set 'fio', which is a SURNAME NAME PATRONYMIC abbrev.
  #
  def set_fio(fio)
    @fio = fio
  end

  ##
  #puts 'fio', which is a SURNAME NAME PATRONYMIC abbrev.
  #
  def fio
    puts @fio
  end

  ##
  #Set user profession.
  #
  def set_profession(profession)
    @profession = profession 
  end

  ##
  #puts user profession.
  #
  def profession
    puts @profession
  end
end  


usr1= User.new
usr1.set_fio('Nadejda Konstantinovna Krupskaya')
usr1.set_profession('revolucioneer')
usr1.set_count(usr1.counter + 1)
usr2= User.new
usr2.set_fio('Vladimir Ilyich Ulyanov')
usr2.set_profession('revolucioneer')
usr2.set_count(usr2.counter + 1)
print 'This is: '
usr1.fio
print 'she is '
usr1.profession
print 'This is: '
usr2.fio
print 'he is '
usr2.profession

puts 'Count of revolutoneers:'
puts usr1.counter
puts usr2.counter

p usr1.instance_variables
puts usr2.methods
p usr2.class
p usr1.respond_to?('instance_variable_get')

