class User < ActiveRecord::Base

  #validate_numerical_of
  #validate_formar_of
  #validate_inclusion
  #valitdate_exclusion  
  #validates :name, :presence: true, :uniqueness: true
  #has_many :tweets
  #belong_to :user
  
  validates_presence_of :name, message: "Falta el nombre"
 
end 


#Metodos sobre bases de datos

#INSERTAR
#user = User.new
#user.name = "Diego"
#user.save

#user = User.new(name: "Diego")

#user.create(name: "Diego")


#EDITAR
#user = User.find(id)
#user.name = "Diego"
#user.mail = "ddiaz@gmail.com"
#user.save

#user.update(name: "Diego")


#ELIMINAR
#user = User.find(id).destroy
#user = User.find(id)
#user.destroy
#user.destroy_all

#CMDS EXTRA
#user.last
#user.first
#user.all
#user.limit(10)
#user.where("Diego") *****
#user.where("Diego").limit(2).order(:name)