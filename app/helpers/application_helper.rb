module ApplicationHelper

    def login_helper
      if current_user.is_a?(GuestUser)
        "<li class='sidebar-nav-item'>".html_safe+
          (link_to  "Log in", new_user_session_path , class: "js-scroll-trigger")+
        "</li>".html_safe+
       
        "<li class='sidebar-nav-item'>".html_safe+
          (link_to  "Register", new_user_registration_path, class: "js-scroll-trigger")+
        "</li>".html_safe
       else
        link_to  "log out", destroy_user_session_path, method: :delete
        
       end
    end

    def source_helper
      if session[:source] 
        content_tag(:h3,
                    "Thanks for visiting me from #{session[:source]}")
      end
    end

end
