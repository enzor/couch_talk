class User < CouchFoo::Base
  property :login, String
  property :email, String
  property :password, String
  property :created_at , DateTime
  
  has_many :posts
  
  validates_presence_of :login, :email , :password
  
  default_sort :created_at
end