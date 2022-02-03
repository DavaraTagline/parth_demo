class RemoveColumns < ActiveRecord::Migration[7.0]
  def self.up
    remove_column :users, :city
  end
end
