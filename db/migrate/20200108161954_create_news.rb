class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|
      t.string :title, null: false
      t.text :description
      t.bigint :image
      t.timestamps
    end
  end
end
