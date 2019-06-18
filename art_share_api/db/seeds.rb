# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

names = [
    {'email' => 'Ilka@gnet.serve'},
    {'email'  => 'Ervin@ydos.parse'},
    {'email'  => 'Davey@darvey.dave'},
     {'email' => 'Desmund@hesmund.centro'},
    {'email'  => 'Flora@flowers.sun'},
    {'email' => 'asdxcv@rails.rails'},
    {'email'  => 'sdfxcv@sql.sql'},
    {'email' => 'zxcvsdf@css.css'},
    {'email'  => 'sdfxcv@ruby.org'},
    {'email' => 'Aasdf@ruby,ruby'}
]

names.each do |userDeats|
    User.create(username:userDeats['email'])
    p "username created with email: #{userDeats["email"]}"
end
