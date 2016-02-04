class Ecm::Youtube::Backend::CategoriesController < Itsf::Backend::BaseController
  def self.resource_class
    # Set the resource class here.
    #
    # Default: Ecm::Youtube::Category
    #
    Ecm::Youtube::Category
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
    #            .require(:category)
    #              .permit(:title, :body)
    # 
    params
      .require(:category)
        .permit(:identifier)
  end
end
