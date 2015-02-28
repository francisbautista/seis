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
class Student < ActiveRecord::Base
    after_create :create_reqs
    validates_presence_of :first_name, :middle_name, :last_name
    has_many :assessments, :dependent => :delete_all
    has_many :reservations, :dependent => :delete_all
    has_many :guardianships
    has_many :parents, through: :guardianships
    # has_many :tests, :dependent => :delete_all
    has_many :tpermits, :dependent => :delete_all
    has_many :student_requirements
    has_many :requirements, through: :student_requirements

    before_save :full_name
    self.per_page = 5

    # searchable do
    #     text :id_number, :boost => 3
    #     text :last_name, :boost => 2
    #     text :first_name, :boost => 2
    #     text :year_level
    #     text :section
    #     text :gender
    #     text :barangay
    #     text :street
    #     text :city
    #     integer :batch_number
    #     text :institution_name
    #     # integer :student_id
    # end


    def full_name
        "#{last_name.capitalize}, #{first_name} #{middle_name}"
    end

    def self.index_search(query)
        where("lower(first_name) like ? or lower(last_name) like ?  or lower(middle_name) like ?", "%#{query}%","%#{query}%","%#{query}%")
    end

    def self.class_search(query)
        where("section LIKE ?", "%#{query}%")
    end

    def self.year_search(query)
        where("year_level like ?", "%#{query}%")
    end

    def create_reqs
        @requirements = Requirement.all
        @requirements.each do |r|
            StudentRequirement.create(student_id: self.id, requirement_id: r.id, status: false)
        end
    end
end
