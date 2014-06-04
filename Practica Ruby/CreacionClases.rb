class User

  @serialVersion
  
  attr :name

  def initialize(name)
    @name = name
  end  
    
end


user = User.new("Diego")

puts user.name