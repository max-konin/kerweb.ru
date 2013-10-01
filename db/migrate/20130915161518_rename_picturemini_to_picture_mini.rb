class RenamePictureminiToPictureMini < ActiveRecord::Migration
  # you may want to change these
  AttachmentColumns = [["updated_at", :datetime], ["file_name", :string], ["content_type", :string], ["file_size", :integer]]

  def self.rename_attachment(table, old, new)
    AttachmentColumns.each do |suffix, type|
      rename_column table, "#{old}_#{suffix}", "#{new}_#{suffix}"
    end
  end

  def self.up
    rename_attachment :projects, :pictureMini, :picture_mini
  end

  def self.down
    rename_attachment :projects, :picture_mini, :pictureMini
  end
end
