class Post
  include SimplyStored::Couch
  
    property :title , :type => String 
    property :body  
    property :published , :type => :boolean 
    
    has_many :posts, :dependent => :destroy
    has_many :users ,:through => :posts

    belongs_to :user

    validates_presence_of :title, :body
    validates_length_of :body, :within => 10..1000
    validates_length_of :title, :within => 4..50
    
    
end
