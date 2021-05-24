class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client
  validates :membership_charge, presence: true
  validates :gym_id, presence: true
  validates :client_id, presence: true 

  validate :only_one_membership_per_gym


  def only_one_membership_per_gym
    if Client.find(self.client_id).gyms.include?(self.gym)
      errors.add("Only one membership per gym")
    end
  end
end
