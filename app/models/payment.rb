# == Schema Information
#
# Table name: payments
#
#  id                 :integer          not null, primary key
#  mode               :string(255)
#  testing_amount     :decimal(, )
#  reservation_amount :decimal(, )
#  installment_number :integer
#  or_number          :integer
#  tuition_amount     :integer
#  discount_rate      :decimal(, )
#  discount_desc      :text
#  created_at         :datetime
#  updated_at         :datetime
#

#TODO: add workaround for relationship with Official Receipt value and migration
#TODO: require payment before student creation

class Payment < ActiveRecord::Base
    belongs_to :student
    #add_migration => official_receipt
end
