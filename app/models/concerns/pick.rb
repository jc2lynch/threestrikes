 class Pick
   include Mongoid::Document
   field :week, type: Integer
   field :team_name, type: String
   field :strike, type: Boolean

   belongs_to :user
   belongs_to :league
end
