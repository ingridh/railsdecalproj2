class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :created
      t.string :going

      t.timestamps
    end
  end
end
