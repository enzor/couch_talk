class Post < CouchFoo::Base  
  property :body, Text
  property :user_id, String
  property :created_at , DateTime
  
  default_sort :created_at
  
  belongs_to :user
  
end