class Membership < ApplicationRecord
    belongs_to :client
    belongs_to :gym

    validates :charge, presence: true
    validates_uniqueness_of :client_id, scope: :gym_id
end
