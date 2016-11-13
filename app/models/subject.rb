class Subject < ActiveRecord::Base

	has_many :pages

   scope :sorted,  lambda  { order("created_at") }


end
