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
#TODO: Create dropdown for old or new students
#TODO: Change View Students to 'All Students'

class Student < ActiveRecord::Base
    after_create :create_reqs
    validates_presence_of :first_name, :middle_name, :last_name
    has_many :assessments
    has_many :reservations
    has_many :guardianships
    has_many :parents, through: :guardianships
    has_many :tests
    has_many :tpermits
    has_many :student_requirements
    has_many :requirements, through: :student_requirements

    def create_reqs
        @requirements = Requirement.all
        @requirements.each do |r|
            StudentRequirement.create(student_id: self.id, requirement_id: r.id, status: false)
        end
    end
end
