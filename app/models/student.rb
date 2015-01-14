# == Schema Information
#
# Table name: students
#
#  id                 :integer          not null, primary key
#  id_number          :integer
#  first_name         :string(255)
#  middle_name        :string(255)
#  last_name          :string(255)
#  admission_date     :date
#  batch_number       :integer
#  year_level         :string(255)
#  section            :string(255)
#  gender             :string(255)
#  birthdate          :date
#  nationality        :string(255)
#  birth_place        :string(255)
#  religion           :string(255)
#  street             :string(255)
#  barangay           :string(255)
#  city               :string(255)
#  postal_code        :integer
#  country            :string(255)
#  lancaster_resident :boolean
#  landline           :string(255)
#  mobile             :string(255)
#  email              :string(255)
#  institution_name   :string(255)
#  school_year        :integer
#  grade              :string(255)
#  general_avg        :integer
#  created_at         :datetime
#  updated_at         :datetime
#

#TODO: Add status for activation c/o requirements
#TODO: Add status for activation c/o admissions
class Student < ActiveRecord::Base
    has_many :payments
    has_many :guardianships
    has_many :parents, through: :guardianships
    has_one :checklist
end
