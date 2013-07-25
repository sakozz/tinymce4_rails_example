class AddAttachmentImageToFilemanagers < ActiveRecord::Migration
  def self.up
    change_table :filemanagers do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :filemanagers, :image
  end
end
