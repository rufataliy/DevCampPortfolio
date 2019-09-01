module ApplicationHelper

    def login_helper
      if current_user.is_a?(GuestUser)
        "<li class='sidebar-nav-item d-flex align-items-center'>".html_safe+
          "<i class='fas fa-sign-in-alt p-3'></i>".html_safe+
          (link_to  "Log in", new_user_session_path , class: "js-scroll-trigger")+
            
        "</li>".html_safe+
        "<li class='sidebar-nav-item d-flex align-items-center'>".html_safe+
          "<i class='fas fa-user-plus p-3'></i>".html_safe+
          (link_to  "Register", new_user_registration_path, class: "js-scroll-trigger")+
        "</li>".html_safe
       else
        "<li class='sidebar-nav-item d-flex align-items-center'>".html_safe+
          (link_to  "Log out", destroy_user_session_path, method: :delete, class: "js-scroll-trigger")+
        "</li>".html_safe
       end
    end

    def source_helper
      if session[:source] 
        content_tag(:h3,
                    "Thanks for visiting me from #{session[:source]}")
      end
    end

end
