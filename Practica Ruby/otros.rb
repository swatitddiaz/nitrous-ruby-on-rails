class Clase1
  
   def initialize(texto)  
    # Instance variables  
    @texto = texto  
  end  
  
  def metodoConRetorno  
    return "metodo con retorno"
  end  
  
  def imprime  
    puts 'imprimir esto'  
  end  
  
  def lee  
    puts "=> " + @texto  
  end  
end  

miClase = Clase1.new("un texto")

puts "The id of d is #{miClase.object_id}." 

miClase.imprime
miClase.lee


