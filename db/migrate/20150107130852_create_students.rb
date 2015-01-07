class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :id_number
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :admission_date
      t.integer :batch_number
      t.string :year_level
      t.string :section
      t.string :gender
      t.date :birthdate
      t.string :nationality
      t.string :birth_place
      t.string :religion
      t.string :street
      t.string :barangay
      t.string :city
      t.integer :postal_code
      t.string :country
      t.boolean :lancaster_resident
      t.string :landline
      t.string :mobile
      t.string :email
      t.string :institution_name
      t.string :year_level
      t.integer :school_year
      t.string :grade
      t.integer :general_avg

      t.timestamps
    end
  end
end
