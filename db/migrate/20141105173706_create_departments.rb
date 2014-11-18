class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.integer :number
      t.string :name
      t.string :zav_kaf
      t.string :secretary
      t.string :director
	  t.references :study_year, index: true
	
      t.timestamps
    end
  end
end
