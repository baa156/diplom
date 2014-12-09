class CreatePerson < ActiveRecord::Migration
  def up
    create_table :people do |t|
      t.string :first_name,         :null => false
      t.string :second_name,         :null => false
      t.string :last_name,         :null => false
      t.string :login,         :null => false
      t.string :post,         :null => false
      t.integer :external_id
	  t.references :department, index: true
	  
	  
      t.timestamps
    end
    add_index :people, [:login], :unique => true
  end
  def down
    drop_table :people
  end
end
