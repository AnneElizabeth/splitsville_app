class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.belongs_to :lists
      t.string :description
      t.string :condition
      
      t.timestamps
    end
  end
end
