class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :name
      # t.boolean :status
      t.boolean :required
      t.string :remarks

      t.timestamps
    end
  end
end
