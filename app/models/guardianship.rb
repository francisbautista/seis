# == Schema Information
#
# Table name: guardianships
#
#  id         :integer          not null, primary key
#  payment_id :integer
#  student_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Guardianship < ActiveRecord::Base
    belongs_to :parent
    belongs_to :student
end
