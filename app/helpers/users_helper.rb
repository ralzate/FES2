module UsersHelper
  
  #def activated_user
    #unless current_user.activation_state == "active" || current_user.admin
     # flash[:danger] = "Please activate your account"
     # redirect_to root_path
    #end
 # end
 def logged_in?
       current_user != nil
     end

  def correct_user
  end

  def current_user?
      current_user
  end
end
