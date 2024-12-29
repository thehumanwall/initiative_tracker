class CreateScales < ActiveRecord::Migration[8.0]
  def change
    create_table :scales do |t|
      t.string :name
      t.integer :value
      t.string :description

      t.timestamps
    end
  end
end
