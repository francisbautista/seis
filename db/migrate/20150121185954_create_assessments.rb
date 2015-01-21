class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.string :installment
      t.string :mode
      t.decimal :tuition
      t.decimal :discount
      t.text :discount_desc
      t.integer :installment_number
      t.integer :or_number
      t.integer :student_id
      t.boolean :paid_status

      t.timestamps
    end
  end
end
