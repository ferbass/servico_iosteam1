class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :short_description
      t.text :description

      t.timestamps
    end
  end
end
