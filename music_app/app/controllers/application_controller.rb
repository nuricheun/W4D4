class ApplicationController < ActionController::Base
    
    def current_user
        return nil if session[:session_token].nil?
        user = User.find_by(session_token: session[:session_token])
        user
    end
    
    def login_user(user)
        session[:session_token] = user.reset_session_token!
    end

    def log_out(user)
        session[:session_token] = nil
        if current_user
            current_user.reset_session_token!
        end
        current_user = nil
    end

end
