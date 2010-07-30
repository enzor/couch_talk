class Book
  include SimplyStored::Couch
  
    property :title  
    property :name  
    property :description  
    property :published , :type => :boolean 
end
