Ecm::Youtube::Backend.configure do |config|
  config.registered_controllers = [
    Ecm::Youtube::Backend::CategoriesController,
    Ecm::Youtube::Backend::VideosController
  ]
end