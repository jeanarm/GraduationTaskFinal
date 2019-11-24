class RelationshipsController < ApplicationController
  def create
    # If you created your own login function, you should have implemented it yourself.
    # use the logged_in? method you implemented by yourself and make it possible to like it, only when logged in.
    if user_signed_in?
      @user = User.find(params[:relationship][:followed_id])
      current_user.follow!(@user)
    end
  end
  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
  end
end
