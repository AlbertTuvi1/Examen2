class Person
  attr_accessor :name, :gender
  attr_reader :age

  def initialize(name, initial_age, gender)
    @name = name
    @age = initial_age
    @gender = gender
  end

  def grow
    @age = @age + 1
  end
end

def mitjana (treballadors)
  age = 0
  longitut = 1
  mitjana = 0
  treballadors.each do |treballador|
    age += treballador.age.to_i
    longitut += 1; 
    mitjana = age/longitut
  end 
  mitjana 
end



treballadors = []

treballadors.push(Person.new("Lorena", 30, :female))
treballadors.push(Person.new("Pedro", 25, :male))
treballadors.push(Person.new("David", 63, :male))
treballadors.push(Person.new("Laura", 34, :female))
treballadors.push(Person.new("Lidia", 29, :female))

puts mitjana(treballadors)

puts "passat un any"

treballadors.each do |treballador|
  treballador.grow
end

puts mitjana(treballadors)

