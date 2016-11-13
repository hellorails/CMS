class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.string :description
      t.integer :header_line 
      t.timestamps null: false
    end
  end
end
