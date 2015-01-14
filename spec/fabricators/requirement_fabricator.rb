Fabricator(:requirement) do

    name {Faker::Commerce.product_name}
    status { [0, 1].sample }
    required {[0, 1].sample }
    remarks {Faker::Hacker.say_something_smart}
end
# == Schema Information
#
# Table name: requirements
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  status     :boolean
#  required   :boolean
#  remarks    :string(255)
#  created_at :datetime
#  updated_at :datetime
#
