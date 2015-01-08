class Parent < ActiveRecord::Base
    has_many :guardianships
    has_many :students, through: :guardianships
end
