class Post
  include Mongoid::Document
  field :name, type: String
  field :body, type: String


  embedded_in :user

end

