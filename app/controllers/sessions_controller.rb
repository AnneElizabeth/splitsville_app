class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    #responsible for creating a new session/logging in user
    
end
