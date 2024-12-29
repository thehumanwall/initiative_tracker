class CreateInitiatives < ActiveRecord::Migration[8.0]
  def change
    create_table :initiatives do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
