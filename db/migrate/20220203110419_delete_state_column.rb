class DeleteStateColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :states, :state_id
  end
end
