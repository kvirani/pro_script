# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Drug.create!(:name => 'Digoxin', :strengths => ['0.125mg', '0.25mg'])
Drug.create!(:name => 'Amitriptyline', :strengths => ['10mg', '25mg', '50mg'])
Drug.create!(:name => 'Metoprolol', :strengths => ['25mg', '50mg', '100mg'])
Drug.create!(:name => 'Furosemide', :strengths => ['20mg', '40mg'])
Drug.create!(:name => 'Warfarin', :strengths => ['1mg', '2mg','3mg','5mg','10mg'])
Drug.create!(:name => 'Montelukast', :strengths => ['4mg', '5mg', '10mg'])
Drug.create!(:name => 'Fluticasone Propionate', :strengths => ['50mcg', '125mcg', '250mcg'])

Drug.create!(:name => 'Salbutamol', :strengths => ['100mcg'])

