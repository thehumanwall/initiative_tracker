class AddDetailsToTeams < ActiveRecord::Migration[8.0]
  def change
    add_column :teams, :value, :string
    add_column :teams, :color_code, :string
  end
end
