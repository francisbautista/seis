class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :test_number
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :test_count
      t.boolean :test_status
      t.text :test_remarks

      t.timestamps
    end
  end
end
