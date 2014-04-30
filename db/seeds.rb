# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

County.create(county_name: 'Surrey')
County.create(county_name: 'Cornwall')
County.create(county_name: 'Middlesex')

Parish.create(parish_name: 'Kingston', county_id: 1)
Parish.create(parish_name: 'St. Andrew', county_id: 1)
Parish.create(parish_name: 'Portland', county_id: 1)
Parish.create(parish_name: 'St. Thomas', county_id: 1)
Parish.create(parish_name: 'Hanover', county_id: 2)
Parish.create(parish_name: 'St. Elizabeth', county_id: 2)
Parish.create(parish_name: 'St. James', county_id: 2)
Parish.create(parish_name: 'Trelawny', county_id: 2)
Parish.create(parish_name: 'Westmoreland', county_id: 2)
Parish.create(parish_name: 'Clarendon', county_id: 3)
Parish.create(parish_name: 'Manchester', county_id: 3)
Parish.create(parish_name: 'St. Ann', county_id: 3)
Parish.create(parish_name: 'St. Catherine', county_id: 3)
Parish.create(parish_name: 'St. Mary', county_id: 3)

