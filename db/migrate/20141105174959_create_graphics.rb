class CreateGraphics < ActiveRecord::Migration
  def change
    create_table :graphics do |t|
      t.date :date_from,         :null => false
      t.date :date_to,         :null => false
      t.boolean :is_active,         :null => false
	    t.references :department,         :null => false
      t.references :graphic_types, :null => false
      t.timestamps
    end
  end
end
