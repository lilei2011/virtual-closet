class CreateOutfits < ActiveRecord::Migration
  def change
  	drop_table :outfits
    create_table :outfits do |t|
      t.string :name
      t.references :user

      t.timestamps
    end
    add_index :outfits, :user_id
  end
end
