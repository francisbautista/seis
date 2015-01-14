# == Schema Information
#
# Table name: student_requirements
#
#  id             :integer          not null, primary key
#  student_id     :integer
#  requirement_id :integer
#  status         :boolean
#  created_at     :datetime
#  updated_at     :datetime
#

class StudentRequirement < ActiveRecord::Base
    belongs_to :student
    belongs_to :requirement
end
