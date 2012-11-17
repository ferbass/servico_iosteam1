class AddColumnToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :lat, :string
    add_column :addresses, :long, :string
  end
end
