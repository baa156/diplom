class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username,         :null => false  # if you use another field as a username, for example email, you can safely remove this field.
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil

      t.string :first_name,         :null => false
      t.string :second_name,         :null => false
      t.string :last_name,         :null => false
      t.string :description
      t.boolean :is_operator
      t.boolean :is_admin
      
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
