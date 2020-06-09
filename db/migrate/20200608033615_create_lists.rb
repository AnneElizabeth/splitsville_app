class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.belongs_to :user
      t.date :published_date

      t.timestamps
    end
  end
end
