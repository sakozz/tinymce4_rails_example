class CreateFilemanagers < ActiveRecord::Migration
  def change
    create_table :filemanagers do |t|
      t.string :name

      t.timestamps
    end
  end
end
