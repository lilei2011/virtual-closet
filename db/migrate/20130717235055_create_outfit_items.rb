class CreateOutfitItems < ActiveRecord::Migration
  def change
    create_table :outfit_items do |t|
      t.references :outfit
      t.references :item

      t.timestamps
    end
    add_index :outfit_items, :outfit_id
    add_index :outfit_items, :item_id
  end
end
