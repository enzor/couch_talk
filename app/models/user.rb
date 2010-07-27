class User 
  include SimplyStored::Couch
  
  property :login
  property :email
  property :password
  property :created_at , :type => DateTime
  
  has_many :posts, :dependent => :destroy
  
  validates_presence_of :login, :email , :password
  
end