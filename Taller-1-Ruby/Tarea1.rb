require 'fileutils'

#this class manage a file document
class FileManager
  
  #this method initialize a file path
  public def initialize(defaultPath)
    @defaultPath = defaultPath
  end
  
  #this method open an especific file
  public def openFile(path)  
    lines = Array.new
      i = 0
      File.foreach(@defaultPath + path) do |line| 
        lines[i] = line
        i +=1
      end
      lines
  end 
  
  #this method write an especific file
  public def writeFile(path, stringToWrite,newFileName)
    
      copyFile( @defaultPath + path,  @defaultPath + newFileName)
    
      File.open(@defaultPath + newFileName, "a") do |f| 
        f << stringToWrite
      end
  end 
  
  #this method copy an especified faile to a new path
  private def copyFile(oldPath, newPath)
    FileUtils.cp(oldPath, newPath)
  end
  
end 

fileManager = FileManager.new("/home/action/workspace/nitrous-ruby-on-rails/")

puts "###################Old Lines#####################"
puts lines = fileManager.openFile("OldFile.txt")
puts "#################################################"

puts ""

#path, string to write, new document name
fileManager.writeFile("OldFile.txt","\nThis is a new Line", "newFile.txt")

puts "###################New File Lines#####################"
puts lines = fileManager.openFile("newFile.txt")
puts "#################################################"




