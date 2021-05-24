class ClientsController < ApplicationController

    def index
        @clients = Client.all 
    end

    def show
        @client = Client.find(params[:id])
    end 

    def new
        @client = Client.new
    end

    def create
        @client = Client.new(params.require(:client).permit(:name, :age))

        if @client.valid?
            @client.save

            redirect_to @client
        else
            flash[:errors] = @client.errors.full_messages
            redirect_to new_client_path
        end
    end

    def destroy
        @client = Client.find(params[:id])
        @client.memberships.destroy_all
        @client.destroy 

        redirect_to clients_path 
    end
end
