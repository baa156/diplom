class CreateGraphicTypes < ActiveRecord::Migration
  def up
    create_table :graphic_types do |t|
      t.string :name,         :null => false

	  
      t.timestamps
    end
    add_index :graphic_types, [:name], :unique => true
  end
  def down
    drop_table :graphic_types
  end
end
