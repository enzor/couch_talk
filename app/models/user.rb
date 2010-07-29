class User 
  include SimplyStored::Couch
  
  devise :registerable, :database_authenticatable, :recoverable,
         :rememberable, :validatable
         
  property :email
  property :password
  property :password_confirmation
  property :key
  property :created_at , :type => DateTime
  property :password_salt
  property :encrypted_password
  property :database_authenticatable ,:null => false
  property :confirmable
  property :recoverable
  property :rememberable


  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
  
  has_many :posts, :dependent => :destroy

end