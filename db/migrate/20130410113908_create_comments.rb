class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :home

      t.timestamps
    end
    add_index :comments, :home_id
  end
end
