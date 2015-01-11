# == Schema Information
#
# Table name: payments
#
#  id                 :integer          not null, primary key
#  mode               :string(255)
#  testing_amount     :decimal(, )
#  reservation_amount :decimal(, )
#  tuition_amount     :decimal(, )
#  discount_rate      :decimal(, )
#  discount_desc      :text
#  installment_number :integer
#  or_number          :integer
#  created_at         :datetime
#  updated_at         :datetime
#

#TODO: add workaround for relationship with Official Receipt value and migration

class Payment < ActiveRecord::Base
    belongs_to :student
end
