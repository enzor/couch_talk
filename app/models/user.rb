class User 
  include SimplyStored::Couch
  
  devise :registerable, :database_authenticatable, :recoverable, :rememberable, :validatable
         
  property :username
  property :email
  property :password
  property :password_confirmation
  property :key
  property :password_salt
  property :encrypted_password
  property :database_authenticatable ,:null => false
  property :recoverable
  property :rememberable
  property :remember_token


  attr_accessible :username,:email, :password, :password_confirmation
  
  
  
  has_many :posts, :dependent => :destroy

end