class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :favorite_team, type: String
  field :password_digest, type: String
  attr_reader :password
  mount_uploader :image, ImageUploader

  has_many :picks
  has_and_belongs_to_many :leagues 
  embeds_many :posts

  def password=(unencrypted_password)
    unless unencrypted_password.empty?
      @password = unencrypted_password
      self.password_digest = BCrypt::Password.create(unencrypted_password)
    end
  end


  def authenticate(unencrypted_password)
    if BCrypt::Password.new(self.password_digest) == unencrypted_password
      return self
    else
      return false
    end
  end

  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false}, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  validates :password, presence: true, length:{ in: 2..20}, confirmation: true, on: :create

  




end

 