class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commentor
      t.integer :going
      t.string :comment

      t.timestamps
    end
  end
end
