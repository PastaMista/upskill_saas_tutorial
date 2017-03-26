class ProfilesController < ApplicationController
    # GET to /users/:user_id/profile/new
    def new
      @profile = Profile.new    #wenn Seite aufgerufen wird, wird eine leere Liste für ein Profil erstellt. Durch Profile(groß geschrieben) verweist man auf das Model
    end
    
    #Post request -> create
    def create
      #User wird ermittelt
      @user = User.find(params[:user_id])
      #Profile wird erstellt und mit User verknüpft
      @profile = @user.build_profile( profile_params )  #build_profile wird bei verbunden Datenbasen genutzt, erstellt für einen die Verknüpfung, in diesem Fall verbindet die eine user_id mit einem Profil 
      if @profile.save
        flash[:success] = "Profil geuuuuuupdatet"
        redirect_to user_path(params[:user_id])   #wird zum Profil weitergeleitet
      else
        render action: :new
      end
    end
    
    #whitelist the params
    private
      def profile_params
        params.require(:profile).permit(:first_name, :last_name, :avatar, :job, :phone_number, :contact_email, :description)
      end
end