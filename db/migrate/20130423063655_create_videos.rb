class CreateVideos < ActiveRecord::Migration
  def change
   create_table :videos do |t|
      t.string :content_type
      t.integer :size
      t.string :filename
    
     
    
      t.timestamps
    end
  end

  def self.down
    drop_table :videos
  end
 
end
