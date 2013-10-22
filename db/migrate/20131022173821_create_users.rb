class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :company
      t.string :location
      t.boolean :pong

      t.timestamps
    end
  end
end
