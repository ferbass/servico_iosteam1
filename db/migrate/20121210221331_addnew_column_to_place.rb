class AddnewColumnToPlace < ActiveRecord::Migration
    def change
      add_column :places, :photos, :string
    end
end
