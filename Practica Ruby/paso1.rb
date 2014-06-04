#Cadena normal
#test = "hola"
#puts test

#Cadena invertida
#test2 = "holamundoprueba".reverse

#Numero to String invertido
#test3 = 123.to_s.reverse

#Arreglo clasico
#puts test4.max
#puts test4.min
#puts test4.sort
#test4 = [1,45,3,4]

#Rango de x a y strings o numeros
#test5 = ("a".."z").to_a
#puts test5

#replace string
#test6 = "Hola Mundo"
#test6['H'] = '0'
#test6[1..2] = '0'
#puts test6

#Separar cadenas por lienas
#test7 = "hola 
#mundo
#prueba
#7"
#puts test7.lines.reverse.join

#upper case y lower case
#test8 = "hola mundo"
#print test8.upcase
#print test8.downcase

#Creacion de Maps
#test9 = {"DefaultIndex" => "Default Value"}
#test9["Index"] = "Value"
#test9["A"] = "A"
#print test9.sort
#print test9.keys
#print test9.values
#print test9.["Index"]

#Map con memoria reservada
#test10 = Hash.new(2)
#test10["new"] = "Hash"
#print test10

#Metodos no tiene definido el retorno en el nombre pero se puede poner normal
#def defaultMehtod(name)   
#  return "Hello " + name
#end
#puts defaultMehtod("Diego")

#Pasar de un arreglo a otro
#libros = {}
#libros["libro1"] = "Excelente"
#libros["libro2"] = "Bueno"
#libros["libro3"] = "Malo"
#libros["libro4"] = "pesimo"
#ventas = Hash.new(0)
#libros.keys.each{ |iterador| ventas[iterador] = libros[iterador] }
#libros.keys.each{ |iterador| ventas[iterador] += 1 }
#libros.keys.each{ |iterador| ventas[iterador] = 0 }
#puts "Estos son los libros"
#puts libros
#puts "Estas son las ventas"
#puts ventas


##############################################################################

class Clase1
  
  public def initialize()
     @libros = {"Libro 1" => "Excelente", "Libro 2" => "Medio", "Libro 3" => "Malo"}
     @ventas = Hash.new(5)
  end  
  
  public def moveToVentas  
    @libros.keys.each{ |iterador| @ventas[iterador] = @libros[iterador] }
  end  
  
  public def getVentas  
    return @ventas
  end  
    
  public def numero  
    numero = 5;
  end  
  
end  

#se crea una nueva instancia de la clase
miClase = Clase1.new()
#llamamos el metodo mover a ventas para llenar el arreglo de ventas
#miClase.moveToVentas
#imprimimos el array
#puts "Ventas:"
#puts miClase.getVentas

puts miClase.numero.times{"hola"}








