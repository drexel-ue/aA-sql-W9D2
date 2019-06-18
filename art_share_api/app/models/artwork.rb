# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  artist_id  :integer
#  image_url  :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord

    validates :title, uniqueness: {scope: :artist_id}

    belong_to :artist ,
        class_name: :User,
        primar_key: :id,
        foreign_key: :artist_id
end
