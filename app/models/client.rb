class Client < ApplicationRecord
    has_many :memberships

    has_many :gyms, through: :memberships

    def sum
        self.memberships.sum(:charge)
    end
end
