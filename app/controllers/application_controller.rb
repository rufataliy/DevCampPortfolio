class ApplicationController < ActionController::Base
   include DeviseWhitelist

   before_action :source_session
   def source_session
      session[:source]=params[:q] if params[:q]
   end
end
