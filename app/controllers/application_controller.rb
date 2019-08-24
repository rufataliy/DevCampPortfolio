class ApplicationController < ActionController::Base
   include DeviseWhitelist
   include SetSource

   def current_user
      super || OpenStruct.new(first_name:"Guest", 
                              lastname:"User", 
                              email:"guest@guest.com" )
   end   
end
