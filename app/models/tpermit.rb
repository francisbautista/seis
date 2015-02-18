# TODO: Segment test date division? Or is it to the guidance's prerogative?

# == Schema Information
#
# Table name: tpermits
#
#  id             :integer          not null, primary key
#  date           :date
#  level          :string(255)
#  test_date      :datetime
#  test_number    :integer
#  status         :boolean
#  remarks        :text
#  report_card    :boolean
#  moral_cert     :boolean
#  recommendation :boolean
#  student_id     :integer
#  or_number      :integer
#  amount         :decimal(, )
#  paid_status    :boolean
#  created_at     :datetime
#  updated_at     :datetime
#

class Tpermit < ActiveRecord::Base
    belongs_to :student

    def self.test_search(query)
        puts query.to_s
        puts "werwedf================="
        t = Time.zone.parse("%#{query}%")

        where("test_date like ?", t)
    end
end
