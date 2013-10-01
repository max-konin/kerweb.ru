class AddAttachmentPictureminiToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :pictureMini
    end
  end

  def self.down
    drop_attached_file :projects, :pictureMini
  end
end
