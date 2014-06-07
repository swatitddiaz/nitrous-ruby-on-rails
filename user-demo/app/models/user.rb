class User < ActiveRecord::Base

  #validate_numerical_of
  #validate_formar_of
  #validate_inclusion
  #valitdate_exclusion  
  #validates :name, :presence: true, :uniqueness: true
  #has_many :tweets
  #belong_to :user
  #validates :name,  presence: true, length: { maximum: 50 }
  #validates_presence_of :name, message: "Falta el nombre"
  
  before_save { self.mail = mail.downcase }
  
  attr_accessor :name, :mail
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :mail, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  
  has_secure_password
  validates :password, length: { minimum: 6 }
 
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
#user.find_by(email: "mhartl@example.com")
#user.last
#user.first
#user.all
#user.limit(10)
#user.where("Diego") *****
#user.where("Diego").limit(2).order(:name)