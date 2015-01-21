class CreateTpermits < ActiveRecord::Migration
  def change
    create_table :tpermits do |t|
      t.date :date
      t.string :level
      t.datetime :test_date
      t.integer :test_number
      t.boolean :status
      t.text :remarks
      t.boolean :report_card
      t.boolean :moral_cert
      t.boolean :recommendation
      t.integer :student_id
      t.integer :or_number
      t.decimal :amount
      t.boolean :paid_status

      t.timestamps
    end
  end
end
