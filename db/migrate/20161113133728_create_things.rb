class CreateThings < ActiveRecord::Migration[5.0]
  def change
    create_table :things do |t|
      t.text :config
      t.text :data

      t.timestamps
    end
  end
end
