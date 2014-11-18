class CreateGraphics < ActiveRecord::Migration
  def change
    create_table :graphics do |t|
      t.date :date_from
      t.date :date_to
      t.boolean :is_activ
	  t.references :department
	  
      t.timestamps
    end
  end
end
