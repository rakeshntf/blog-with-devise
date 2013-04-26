class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name
      t.string :title
      t.string :upload

      t.timestamps
    end
  end
end
