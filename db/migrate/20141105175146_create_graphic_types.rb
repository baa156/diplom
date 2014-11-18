class CreateGraphicTypes < ActiveRecord::Migration
  def change
    create_table :graphic_types do |t|
      t.string :name
	  t.references :graphic
	  
      t.timestamps
    end
  end
end
