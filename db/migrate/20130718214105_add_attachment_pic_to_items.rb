class AddAttachmentPicToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :pic
    end
  end

  def self.down
    drop_attached_file :items, :pic
  end
end
