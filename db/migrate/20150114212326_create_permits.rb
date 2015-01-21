class CreatePermits < ActiveRecord::Migration
  def change
    create_table :permits do |t|
      t.date :date
      t.string :level
      t.datetime :test_date
      t.datetime :release
      t.boolean :report_card
      t.boolean :moral_cert
      t.boolean :recommendation
      t.integer :student_id

      t.timestamps
    end
  end
end
