class CreateDatesSchedules < ActiveRecord::Migration
  def change
    create_table :dates_schedules do |t|
      t.string :classroom,         :null => false
      t.datetime :timestamp,         :null => false
	    t.references :shedule, index: true
	  
      t.timestamps
    end
  end
end
