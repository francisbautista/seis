# == Schema Information
#
# Table name: reservations
#
#  id          :integer          not null, primary key
#  remarks     :string(255)
#  amount      :decimal(, )
#  student_id  :integer
#  or_number   :integer
#  paid_status :boolean
#  created_at  :datetime
#  updated_at  :datetime
#

class Reservation < ActiveRecord::Base
    belongs_to :student
end
