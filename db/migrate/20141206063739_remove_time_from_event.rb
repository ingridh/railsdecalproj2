class RemoveTimeFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :Time, :string
  end
end
