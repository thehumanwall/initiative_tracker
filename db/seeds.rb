# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# destroy all static tables
TeamGroup.destroy_all
Priority.destroy_all
Status.destroy_all

# seed all static tables
[ "Experiences", "Services" ].each do |team_group_name|
  TeamGroup.find_or_create_by!(name: team_group_name)
end
[ "Low", "Medium", "High" ].each do |priority_name|
  Priority.find_or_create_by!(name: priority_name)
end
[ "Not Started", "Planning", "Adopting", "Full Adoption" ].each do |status_name|
  Status.find_or_create_by!(name: status_name)
end


[ "Initiative 1", "Initiative 2", "Initiative 3" ].each do |initiative_name|
  initiative = Initiative.find_or_create_by!(name: initiative_name)
  initiative.initiative_items.destroy_all
  initiative.initiative_items.create!([
    { name: "#{initiative_name} Item 1", priority: Priority.first, status: Status.first },
    { name: "#{initiative_name} Item 2", priority: Priority.second, status: Status.second },
    { name: "#{initiative_name} Item 3", priority: Priority.third, status: Status.third }
  ])
end
