class CreateMinumen < ActiveRecord::Migration[5.2]
  def change
    create_table :minumen do |t|

      t.timestamps
    end
  end
end
