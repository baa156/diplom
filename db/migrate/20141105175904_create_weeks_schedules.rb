class CreateWeeksSchedules < ActiveRecord::Migration
  def change
    create_table :weeks_schedules do |t|
      t.integer :day,         :null => false
      t.string :classroom,         :null => false
      t.boolean :week_type,         :null => false
      t.date :date_from,         :null => false
      t.date :date_to,         :null => false
      t.time :time_p,         :null => false
      t.references :shedule, index: true
      
      
      t.timestamps
    end
  end
end
