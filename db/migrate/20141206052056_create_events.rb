class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :time
      t.string :date
      t.integer :user_id

      t.timestamps
    end
  end
end
