# == Schema Information
#
# Table name: assessments
#
#  id                 :integer          not null, primary key
#  installment        :string(255)
#  mode               :string(255)
#  tuition            :decimal(, )
#  discount           :decimal(, )
#  discount_desc      :text
#  installment_number :integer
#  or_number          :integer
#  student_id         :integer
#  paid_status        :boolean
#  created_at         :datetime
#  updated_at         :datetime
#

class Assessment < ActiveRecord::Base
    belongs_to :student
end
