class Client < ApplicationRecord
    has_many :memberships
    has_many :gyms, through: :memberships

    validates :age, numericality: { greater_than: 12 }

    def total_price
        if memberships[0]
            memberships.sum{|membership| membership.membership_charge}
        else 
            0
        end
    end
end
