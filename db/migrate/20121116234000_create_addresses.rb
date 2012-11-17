class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :number
      t.string :city
      t.string :state
      t.string :country
      t.string :neighborhood

      t.timestamps
    end
  end
end
