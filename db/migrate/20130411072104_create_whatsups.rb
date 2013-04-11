class CreateWhatsups < ActiveRecord::Migration
  def change
    create_table :whatsups do |t|
      t.string :name

      t.timestamps
    end
  end
end
