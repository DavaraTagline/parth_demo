class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :gender
      t.string :hobby, array: true
      t.references :state, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.timestamps
    end
  end
end
