class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.boolean :status
      t.text :remarks

      t.timestamps
    end
  end
end
