class CreateStudyYears < ActiveRecord::Migration
  def up
    create_table :study_years do |t|
      t.string :name,         :null => false
      t.boolean :is_current,         :null => false

      t.timestamps
    end
    add_index :study_years, [:name], :unique => true

  end
  def down
    drop_table :study_years
  end
end
