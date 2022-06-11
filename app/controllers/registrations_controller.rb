class RegistrationsController<ApplicationController
    def new
        @user=User.new # @ means global project scope variable
    end

    def create
        # render plain: params[:user]
        @user=User.new(user_params)
        if @user.save
            redirect_to root_path,notice: "Account created successfully"
        else
            # flash[:alert]="Something was wrong"
            render :new
        end
    end

    private
    
    def user_params
        params.require(:user).permit(:email,:password,:password_confirmation)
    end

end