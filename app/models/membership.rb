class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client
  validates :membership_charge, presence: true
  validates :gym_id, presence: true
  validates :client_id, presence: true, uniqueness: { scope: :gym_id}

end
