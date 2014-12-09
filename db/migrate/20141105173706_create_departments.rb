class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.integer :number,         :null => false
      t.string :name,         :null => false
      t.string :zav_kaf,         :null => false
      t.string :secretary,         :null => false
      t.string :director,         :null => false
	    t.references :study_year, index: true
	
      t.timestamps
    end
  end
end
