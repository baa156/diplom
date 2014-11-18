class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.string :last_name
      t.string :login
      t.string :password_digest
      t.string :description
      t.boolean :is_operator
      t.boolean :is_admin

      t.timestamps
    end
  end
end
