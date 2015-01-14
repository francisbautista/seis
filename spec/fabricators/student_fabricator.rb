Fabricator(:student) do
    id_number {Faker::Number.number(6)}
    first_name {Faker::Name.first_name}
    middle_name {Faker::Lorem.characters(1)}
    last_name {Faker::Name.last_name}
    admission_date {Faker::Date.backward(14)}
    batch_number {Faker::Number.digit}
    year_level {Faker::Number.number(1)}
    section {Faker::Company.name}
    gender { %w(M F).sample }
    birthdate {Faker::Date.backward(500)}
    nationality {Faker::Lorem.word}
    birth_place {Faker::Address.state}
    religion {Faker::Lorem.word}
    street {Faker::Address.street_address}
    barangay {Faker::Address.state}
    city {Faker::Address.city}
    postal_code {Faker::Number.number(4)}
    landline {Faker::PhoneNumber.phone_number}
    mobile {Faker::PhoneNumber.cell_phone}
    lancaster_resident {[0, 1].sample }
    email {Faker::Internet.free_email}

end

#  id                 :integer          not null, primary key


#  mobile             :string(255)
#  email              :string(255)
#  institution_name   :string(255)
#  school_year        :integer
#  grade              :string(255)
