class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :favorite_team, type: String

  mount_uploader :image, ImageUploader

  has_many :picks
  has_and_belongs_to_many :leagues 




end

 