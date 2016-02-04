class Ecm::Youtube::Backend::VideosController < Itsf::Backend::BaseController
  include Controller::ActsAsPublishedConcern
  include Controller::ActsAsListConcern

  def self.resource_class
    # Set the resource class here.
    #
    # Default: Ecm::Youtube::Video
    #
    Ecm::Youtube::Video
  end

  private

  def collection_scope
    # Customize the collection scope here for collection retrival (i.e. for the
    # index action).
    #
    # Example: current_user.posts.includes(:comments)
    #
    # Default: resource_class
    #
    resource_class
  end

  def permitted_params
    # Set the allowed params, for your create and update methods.
    # 
    # Example: params
    #            .require(:video)
    #              .permit(:title, :body)
    # 
    params
      .require(:video)
        .permit(:category_id, :identifier, :published)
  end
end
