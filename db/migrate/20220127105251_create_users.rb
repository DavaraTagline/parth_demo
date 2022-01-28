class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :gender
      t.string :state
      t.string :city
      t.string :hobby

      t.timestamps
    end
  end
end
