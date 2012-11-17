class AddColumnsToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :place_id, :integer
    add_column :addresses, :event_id, :integer
    
    add_index :addresses, :place_id
    add_index :addresses, :event_id
  end
end
