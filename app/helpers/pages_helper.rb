module PagesHelper
	 def logged_in?
       current_user != nil
     end

  def correct_user
  end

  def current_user?
      current_user
  end
end
