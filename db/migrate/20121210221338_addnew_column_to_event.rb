class AddnewColumnToEvent < ActiveRecord::Migration
  def change
    add_column :events, :photos, :string
  end
end
