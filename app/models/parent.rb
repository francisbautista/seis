# == Schema Information
#
# Table name: parents
#
#  id          :integer          not null, primary key
#  first_name  :string(255)
#  middle_name :string(255)
#  last_name   :string(255)
#  relation    :string(255)
#  birthdate   :date
#  occupation  :string(255)
#  email       :string(255)
#  landline    :string(255)
#  mobile      :string(255)
#  street      :string(255)
#  barangay    :string(255)
#  city        :string(255)
#  country     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Parent < ActiveRecord::Base
    has_many :guardianships
    has_many :students, through: :guardianships
    validates_presence_of :last_name, :middle_name, :first_name, :mobile
end
