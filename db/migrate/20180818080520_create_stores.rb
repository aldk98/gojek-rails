class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :title
      t.string :name
      t.string :sex

      t.timestamps
    end
  end
end
