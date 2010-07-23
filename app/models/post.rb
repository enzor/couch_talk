class Post < CouchFoo::Base  
  property :title, String
  property :body, Text
  property :user_id, String
  property :created_at , DateTime
  
  default_sort :created_at
  
  belongs_to :user
  
  validates_presence_of :title, :body, :user_id
  validates_length_of :body, :within => 10..1000
  validates_length_of :title, :within => 4..50
  
end