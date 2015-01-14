class CreateAdmissions < ActiveRecord::Migration
  def change
    create_table :admissions do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.string :grade_level
      t.string :address
      t.string :mode

      t.timestamps
    end
  end
end
