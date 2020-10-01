class CreatePins < ActiveRecord::Migration[6.0]
  def change
    create_table :pins do |t|
      t.string :image
      t.string :title
      t.string :description
      t.string :tags

      t.timestamps
    end
  end
end
