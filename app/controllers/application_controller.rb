class ApplicationController < ActionController::Base
   include DeviseWhitelist
   include SetSource
   include CurrentUserConcern
   include DefaultPageTitle
   
   before_action :set_copyright

   def set_copyright
      @copyright = DevCampViewTool::Renderer.copyright "Rufat Aliyev", "All rights reserved"
   end
end
