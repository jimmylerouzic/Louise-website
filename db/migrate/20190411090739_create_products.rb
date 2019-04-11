class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :picture
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
