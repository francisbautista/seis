# == Schema Information
#
# Table name: tests
#
#  id           :integer          not null, primary key
#  test_number  :integer
#  first_name   :string(255)
#  middle_name  :string(255)
#  last_name    :string(255)
#  test_count   :integer
#  test_status  :boolean
#  test_remarks :text
#  created_at   :datetime
#  updated_at   :datetime
#
# Added test class
class Test < ActiveRecord::Base
end
