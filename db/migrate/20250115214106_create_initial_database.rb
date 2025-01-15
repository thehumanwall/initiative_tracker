class CreateInitialDatabase < ActiveRecord::Migration[8.0]
  def change
    create_table :initiatives do |t|
      t.string :name

      t.timestamps
    end

    create_table :initiative_items do |t|
      t.string :name
      t.string :priority
      t.string :status
      t.belongs_to :initiative, null: false, foreign_key: true

      t.timestamps
    end

    create_table :team_groups do |t|
      t.string :name

      t.timestamps
    end

    create_table :teams do |t|
      t.string :name
      t.string :value
      t.string :color_code
      t.references :team_group, null: false, foreign_key: true

      t.timestamps
    end

    create_table :scales do |t|
      t.string :name
      t.integer :value
      t.string :description

      t.timestamps
    end

    create_table :statuses do |t|
      t.string :name

      t.timestamps
    end

    create_table :priorities do |t|
      t.string :name

      t.timestamps
    end
  end
end
