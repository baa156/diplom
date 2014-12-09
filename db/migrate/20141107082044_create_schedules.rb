class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :graphic, index: true
      t.references :group, index: true

      t.timestamps
    end
  end
end
