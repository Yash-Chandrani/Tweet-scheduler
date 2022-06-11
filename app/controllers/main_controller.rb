class MainController<ApplicationController
    def index
        flash.now[:notice]="Logged in successfully" #flash.now means you want to display only in the current request and not after it renders
        flash.now[:alert]="Invalid email or password"
    end
end