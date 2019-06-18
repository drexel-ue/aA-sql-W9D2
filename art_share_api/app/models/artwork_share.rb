class ArtworkShare < ApplicationRecord
    validates :viewer_id, uniqueness: {scope: :artwork_id}
    belongs_to :viewer,
        class_name: :User,
        foreign_key: :viewer_id

    belongs_to :artwork,
        class_name: :Artwork,
        foreign_key: :artwork_id

    has_many :shared_viewers,
        through: :viewer

        

    user -> artworkshare -> artwork

end