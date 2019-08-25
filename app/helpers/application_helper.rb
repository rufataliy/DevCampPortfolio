module ApplicationHelper

    def login_helper
      if current_user.is_a?(User)
         link_to  "log out", destroy_user_session_path, method: :delete 
       else
        (link_to  "log in", new_user_session_path )+
        "<br>".html_safe+
         (link_to  "register", new_user_registration_path)
       end
    end

    def source_helper
      if session[:source] 
        content_tag(:h3,
                    "Thanks for visiting me from #{session[:source]}")
      end
    end

end
