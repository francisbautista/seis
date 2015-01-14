class StudentRequirement < ActiveRecord::Base
    belongs_to :requirement
    belongs_to :student
end
