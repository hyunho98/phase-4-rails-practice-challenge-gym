class Client < ApplicationRecord
    has_many :memberships
    has_many :gyms, through: :memberships

    def total_charge
        self.memberships.reduce(0) { |sum, m| sum + m.charge }
    end
end
