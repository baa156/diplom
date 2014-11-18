class CreateStudyYears < ActiveRecord::Migration
  def change
    create_table :study_years do |t|
      t.string :name
      t.boolean :is_current

      t.timestamps
    end
  end
end
