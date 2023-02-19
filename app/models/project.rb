class Project < ApplicationRecord
    extend FriendlyId
    friendly_id :unique_order_url, use: :slugged

    def unique_order_url
      "#{(('a'..'z').to_a.shuffle.first(9) + ('0'..'9').to_a.shuffle.first(9)).to_a.shuffle.join}"
    end

    validates :title, presence: true

    mount_uploader :image, PhotoUploader
end
