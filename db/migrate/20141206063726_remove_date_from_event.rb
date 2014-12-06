class RemoveDateFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :Date, :string
  end
end
