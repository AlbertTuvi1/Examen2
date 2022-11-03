#Autor :: Albert Tubert Viñas
#
# == Exemple
#Aquest codi funciona per 
#-Calcular la mitja
#-Sumar un any més
#
# === Clase Person
# *metode initialize
# *metode mitjana


class Person
  attr_accessor :name, :gender
  attr_reader :age
  
  
  # @return [String, Integer, String]
  def initialize(name, initial_age, gender)
    @name = name
    @age = initial_age
    @gender = gender
  end

  #Estava mal ordenat
  def grow
    @age = @age + 1
  end
end

#Aqui he tret la longitud 

# I he fet que la mitjana la calculava malament i he fet que només la calculi quan la imprimeix.  

#@return [Integer, Integer]
def mitjana(treballadors, longitut)
  age = 0
    treballadors.each do |treballador|
        age += treballador.age.to_i
end 
  mitjana = age/longitut  
  mitjana 
end

treballadors = []

treballadors.push(Person.new("Lorena", 30, :female))
treballadors.push(Person.new("Pedro", 25, :male))
treballadors.push(Person.new("David", 63, :male))
treballadors.push(Person.new("Laura", 34, :female))
treballadors.push(Person.new("Lidia", 29, :female))

#I he guardat la longitud despres de l'array i ho guarda a una variable

longitut = treballadors.length

#Calucla la mitjana i la mostra

puts mitjana(treballadors, longitut)

puts "passat un any"

treballadors.each do |treballador|
  treballador.grow
end

#@type [Integer, Integer]
puts mitjana(treballadors , longitut)

