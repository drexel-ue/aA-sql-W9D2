# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :artworks,
        foreign_key: :artist_id,
        dependent: :destroy

    has_many :sharing_artworks,
        class_name: :ArtworkShare,
        foreign_key: :viewer_id,
        dependent: :destroy

    
    has_many :shared_artworks,  
        through: :sharing_artworks,
        source: :artwork,
        dependent: :destroy

    has_many :comments,
        foreign_key: :author_id,
        class_name: :Comment,
        dependent: :destroy
end
