class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :mode
      t.decimal :testing_amount
      t.decimal :reservation_amount
      t.decimal :tuition_amount
      t.decimal :discount_rate
      t.text :discount_desc
      t.integer :installment_number
      t.integer :or_number

      t.timestamps
    end
  end
end
