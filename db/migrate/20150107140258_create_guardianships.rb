class CreateGuardianships < ActiveRecord::Migration
  def change
    create_table :guardianships do |t|
      t.integer :parent_id
      t.integer :student_id

      t.timestamps
    end
  end
end
