class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :remarks
      # t.decimal :amount
      t.integer :student_id
      t.integer :or_number
      t.boolean :paid_status

      t.timestamps
    end
  end
end
