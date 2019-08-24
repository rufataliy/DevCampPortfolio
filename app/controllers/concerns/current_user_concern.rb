module CurrentUserConcern
    extend ActiveSupport::Concern

    def current_user
        super || guest_user
    end
    
    def guest_user
        OpenStruct.new(first_name:"Guest", 
                        lastname:"User", 
                        email:"guest@guest.com" )
    end
end
