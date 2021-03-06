module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path) +
      "<br />".html_safe +
      (link_to "Login", new_user_session_path)
    else
      link_to "Logout", destroy_user_session_path, method: :delete
    end
  end

  def source_helper(layout_name)
    greeting = "Thanks for visiting me from #{session[:source]}!"
    content_tag(:p, greeting, class: "source-greeting") if session[:source]
  end

  def copyright_generator
    ViewToolSeven42::Renderer.copyright 'Sarah Evans', 'All rights reserved'
  end
end
