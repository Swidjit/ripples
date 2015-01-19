class RegistrationsController < Devise::RegistrationsController

  def create
    super
    unless sign_up_params[:referring_post_id].blank?
      referring_user_id = Post.find(sign_up_params[:referring_post_id]).user_id
      relationship  = Relationship.new(:parent_id => referring_user_id, :child_id => resource.id)
      relationship.save
    end

  end
end
