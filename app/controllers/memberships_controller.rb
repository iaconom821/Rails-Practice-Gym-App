class MembershipsController < ApplicationController

    def index
        @memberships = Membership.all 
    end

    def show
        @membership = Membership.find(params[:id])
        @client = @membership.client 
        @gym = @membership.gym 
    end

    def new
        
        @gyms = Gym.all
        @clients = Client.all 
        @membership = Membership.new 
      
    end

    def create
        @membership = Membership.new(params.require(:membership).permit(:membership_charge, :gym_id, :client_id))

        if @membership.valid?
            @membership.save

            redirect_to @membership
        else
            flash[:errors] = @membership.errors.full_messages
            
            redirect_to new_membership_path
        end
    end
end
