class Student < ActiveRecord::Base
    has_many :payments
    has_many :guardianships
    has_many :parents. through: :guardianships
end
