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

artwork_titles = [{'title' => 'matrices', 'url' => 'zxcvedf.com'}, 
{'title' =>'superstructure','url' => 'zxcvedfdf.com'},
{'title' =>'implementation','url' => 'zxcwfdvedf.com'},
{'title' =>'Total','url' => 'zxcvedf.com'},
{'title' =>'5th generation','url' => 'zxcvedfsdf.com'},
{'title' =>'content-based','url' =>'zxcvdfvedf.com' },
{'title' =>'mobile','url' => 'zxcveeredf.com'},
{'title' =>'asymmetric','url' => 'zxcvefxcvdf.com'},
{'title' =>'optimizing','url' => 'zxcvgetddf.com'},
{'title' =>'ability','url' => 'zxcvefyrfdf.com'}
]

artwork_titles.each do |map|
    Artwork.create(title: map["title"], image_url: map['url'])
    p "#{map["title"]} created and hosted at: #{map['url']}"
end

ArtworkShare.create(artwork_id: 1, viewer_id: 1)
ArtworkShare.create(artwork_id: 1, viewer_id: 2)
ArtworkShare.create(artwork_id: 1, viewer_id: 3)
ArtworkShare.create(artwork_id: 2, viewer_id: 4)
ArtworkShare.create(artwork_id: 3, viewer_id: 4)
ArtworkShare.create(artwork_id: 4, viewer_id: 5)
ArtworkShare.create(artwork_id: 4, viewer_id: 6)
ArtworkShare.create(artwork_id: 5, viewer_id: 7)
ArtworkShare.create(artwork_id: 6, viewer_id: 8)
ArtworkShare.create(artwork_id: 5, viewer_id: 8)
ArtworkShare.create(artwork_id: 7, viewer_id: 9)
ArtworkShare.create(artwork_id: 8, viewer_id: 10)
ArtworkShare.create(artwork_id: 9, viewer_id: 10)
ArtworkShare.create(artwork_id: 10, viewer_id: 10)

