# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(first_name: 'Francis', last_name: 'Bautista',
email: 'francis@gmail.com', password: 'password', position: 'Chief-Registrar')

User.create!(first_name: 'Stuart', last_name: 'Samson',
email: 'stuart@gmail.com', password: 'password', position: 'Registrar')

User.create!(first_name: 'Bea', last_name: 'Francisco',
email: 'bea@gmail.com', password: 'password', position: 'Accountant')

User.create!(first_name: 'Clarisse', last_name: 'Chia',
email: 'clarisse@gmail.com', password: 'password', position: 'Guidance Counselor')

User.create!(first_name: 'Kath', last_name: 'Castillo',
email: 'kath@gmail.com', password: 'password', position: 'Cashier')

Student.create!(
id_number: 130464,
first_name: 'Francis',
middle_name: 'T',
last_name: 'Bautista',
batch_number: 4,
year_level: 7,
section: 'Hopeful',
gender: 'M',
nationality: 'Filipino',
birthplace: 'Cebu',
religion: 'Roman Catholic',
street: 'Mark',
barangay: 'Mayamot',
city: 'Antipolo',
postal_code: 1870,
lancaster_resident: 0,
landline: '681231',
mobile: '09175035916',
email: "francis@gmail.com",
institution_name: 'Ateneo High School' )

Student.create!(
id_number: 130849,
first_name: 'Clarisse Joanne',
middle_name: 'Aldeguer',
last_name: 'Chia',
batch_number: 9,
year_level: 10,
section: 'Happiness',
gender: 'F',
nationality: 'Filipino',
birthplace: 'Manila',
religion: 'Roman Catholic',
street: '15 Sampaguita',
barangay: 'BF Homes',
city: 'Paranaque',
postal_code: 1700,
lancaster_resident: 0,
landline: '842-1234',
mobile: '09224260020',
email: "cjchia@email.com",
institution_name: 'St. Peter the Apostle School' )

Student.create!(
id_number: 153456,
first_name: 'Sherlock',
middle_name: 'Holmes',
last_name: 'Holmes',
batch_number: 12,
year_level: 9,
section: 'Peaceful',
gender: 'M',
nationality: 'British',
birthplace: 'London',
religion: 'N/A',
street: '221b Baker Street',
barangay: 'Somewhere',
city: 'London',
postal_code: 199234,
lancaster_resident: 0,
landline: '681231',
mobile: '09123456789',
email: "holmes@gmail.com",
institution_name: 'N/A' )

Student.create!(
id_number: 134237,
first_name: 'Courtney',
middle_name: 'Sy',
last_name: 'Pagsisihan',
batch_number: 1,
year_level: 1,
section: 'Love',
gender: 'F',
nationality: 'Filipino',
birthplace: 'Makati',
religion: 'Christian',
street: '185 Oceanic',
barangay: 'Mabuhay',
city: 'Cavite',
postal_code: 1804,
lancaster_resident: 1,
landline: '9883641',
mobile: '09940214608',
email: "csp@gmail.com",
institution_name: 'N/A' )

Student.create!(
id_number: 139215,
first_name: 'Jess',
middle_name: 'Santos',
last_name: 'Villanueva',
batch_number: 3,
year_level: 6,
section: 'Peaceful',
gender: 'F',
nationality: 'Filipino',
birthplace: 'Manila',
religion: 'Roman Catholic',
street: '1548 Gumamela',
barangay: 'Mabuti',
city: 'Cavite',
postal_code: 1876,
lancaster_resident: 1,
landline: '7652105',
mobile: '09325481794',
email: "jsv@gmail.com",
institution_name: 'Singapore School Manila' )

Student.create!(
id_number: 159013,
first_name: 'John',
middle_name: 'Reyes',
last_name: 'Cruz',
batch_number: 5,
year_level: 4,
section: 'Peaceful',
gender: 'M',
nationality: 'Filipino',
birthplace: 'Manila',
religion: 'Roman Catholic',
street: '318',
barangay: 'BF Homes',
city: 'Las Pinas',
postal_code: 1600,
lancaster_resident: 0,
landline: '8931211',
mobile: '09187649137',
email: "jrc@gmail.com",
institution_name: 'PAREF Southridge' )

Student.create!(
id_number: 149214,
first_name: 'Sarah',
middle_name: 'Ong',
last_name: 'Santos',
batch_number: 8,
year_level: 4,
section: 'Happiness',
gender: 'F',
nationality: 'Filipino',
birthplace: 'Manila',
religion: 'Christian',
street: '897 San Geronimo',
barangay: 'Magallanes',
city: 'Makati',
postal_code: 1891,
lancaster_resident: 0,
landline: '8769875',
mobile: '09165334444',
email: "sos@gmail.com",
institution_name: 'Reach International School' )



30.times { Fabricate(:student) }
5.times { Fabricate(:requirement) }
