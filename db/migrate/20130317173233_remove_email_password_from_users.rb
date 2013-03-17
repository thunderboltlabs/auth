class RemoveEmailPasswordFromUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.remove :email
      t.remove :password
    end
  end

  def self.down
    change_table :users do |t|
      t.string :email
      t.string :password
    end
  end
end
