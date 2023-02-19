class Account < ApplicationRecord
    belongs_to :owner, class_name: 'User'

    validates :name, presence: true

    accepts_nested_attributes_for :owner

    extend FriendlyId
    friendly_id :unique_order_url, use: :slugged

    def unique_order_url
      "#{(('a'..'z').to_a.shuffle.first(9) + ('0'..'9').to_a.shuffle.first(9)).to_a.shuffle.join}"
    end

end
