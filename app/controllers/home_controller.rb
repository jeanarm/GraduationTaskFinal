class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to questions_path
    else 
      redirect_to welcome_index_path
    end
  end
end
