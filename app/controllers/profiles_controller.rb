class ProfilesController < ApplicationController
    # GET to /users/:user_id/profile/new
    def new
      @profile = Profile.new    #wenn Seite aufgerufen wird, wird eine leere Liste für ein Profil erstellt
    end
end