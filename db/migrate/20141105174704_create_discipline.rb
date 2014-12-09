class CreateDiscipline < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name,         :null => false
      t.string :subject,         :null => false
      t.string :subject_short
      t.string :semester,         :null => false
	    t.references :person, index: true
	  
	  
      t.timestamps
    end
  end
end
