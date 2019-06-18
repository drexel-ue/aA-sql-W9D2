# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'byebug'
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

artwork_titles = [
    {'title' => 'matrices', 'url' => 'zxcvedf.com', 'artist_id' => 1}, 
    {'title' =>'superstructure','url' => 'zxcvedfdf.com', 'artist_id' => 2},
    {'title' =>'implementation','url' => 'zxcwfdvedf.com', 'artist_id' => 3},
    {'title' =>'Total','url' => 'zxcvedf.com', 'artist_id' => 4},
    {'title' =>'5th generation','url' => 'zxcvedfsdf.com', 'artist_id' => 5},
    {'title' =>'content-based','url' =>'zxcvdfvedf.com', 'artist_id' =>6},
    {'title' =>'mobile','url' => 'zxcveeredf.com', 'artist_id' => 7},
    {'title' =>'mobiled2','url' => 'zeeredf.com', 'artist_id' => 7},
    {'title' =>'hobile','url' => 'zxcveeredf.com', 'artist_id' => 7},
    {'title' =>'tobile','url' => 'zxcveeredf.com', 'artist_id' => 7},
    {'title' =>'asymmetric','url' => 'zxcvefxcvdf.com','artist_id' => 8},
    {'title' =>'optimizing','url' => 'zxcvgetddf.com','artist_id' => 9},
    {'title' =>'ability','url' => 'zxcvefyrfdf.com','artist_id' => 10}
]

artwork_titles.each do |map|
    # debugger
    if Artwork.create(title: map["title"], image_url: map['url'], artist_id: map['artist_id'])
        p "#{map["title"]} created and hosted at: #{map['url']}"
    else
        p "IT DIDNT WORK FOOL"
    end
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

