class CreateItems < ActiveRecord::Migration
  def change
    drop_table :items
    create_table :items do |t|
      t.string :name
      t.references :category
      t.references :user

      t.timestamps
    end
    add_index :items, :category_id
    add_index :items, :user_id
  end
end
