class CreateTeamGroups < ActiveRecord::Migration[8.0]
  def change
    create_table :team_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
