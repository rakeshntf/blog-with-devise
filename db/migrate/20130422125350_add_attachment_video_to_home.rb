class AddAttachmentVideoToHome < ActiveRecord::Migration
  def change
  	   change_table :homes do |t|
      t.attachment :video
    end
  end

  def self.down
    drop_attached_file :homes, :video
  end
end

