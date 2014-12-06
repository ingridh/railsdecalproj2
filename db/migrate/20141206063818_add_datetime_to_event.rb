class AddDatetimeToEvent < ActiveRecord::Migration
  def change
    add_column :events, :datetime, :Datetime
  end
end
