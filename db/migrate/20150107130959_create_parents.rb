class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :relation
      t.date :birthdate
      t.string :occupation
      t.string :email
      t.string :landline
      t.string :mobile
      t.string :street
      t.string :barangay
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
