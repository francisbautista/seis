class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.boolean :status
      t.string :remarks
      t.decimal :amount
      t.integer :student_id
      t.integer :or_number

      t.timestamps
    end
  end
end
