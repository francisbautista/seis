class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :test_number
      t.boolean :status
      t.text :remarks
      t.integer :student_id

      t.timestamps
    end
  end
end
