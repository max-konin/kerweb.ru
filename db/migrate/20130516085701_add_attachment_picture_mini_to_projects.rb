class AddAttachmentPictureMiniToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :picture_mini
    end
  end

  def self.down
    drop_attached_file :projects, :picture_mini
  end
end
