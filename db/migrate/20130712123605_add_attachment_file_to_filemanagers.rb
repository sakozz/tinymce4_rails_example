class AddAttachmentFileToFilemanagers < ActiveRecord::Migration
  def self.up
    change_table :filemanagers do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :filemanagers, :file
  end
end
