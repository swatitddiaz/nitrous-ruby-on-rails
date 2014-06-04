class Clase1
  
  public def openFile(path)  
    comics = Array.new
      i = 0
      File.foreach(path) do |line| 
        comics[i] = line
        i +=1
      end
      comics
  end 
end 

myClass = Clase1.new()
puts comics = myClass.openFile("/home/action/workspace/Copia de hola.txt")
