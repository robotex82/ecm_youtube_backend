Itsf::Backend.configure do |config|
  # Manually disable features
  #
  # Default: config.disabled_features: []
  #
  config.disabled_features = [
    :pundit,
    :ransack
  ]

  # Set the base controller the backend dashboards
  #
  # Default: config.dashboard_base_controller = 'BackendController'
  #
  config.dashboard_base_controller = 'BackendController'

  # Set the base controller for module home controllers
  #
  # Default: config.home_base_controller = 'BackendController'
  #
  config.home_base_controller = 'BackendController'

  # Set the base controller for resouce controllers
  #
  # Default: config.resource_base_controller = 'BackendController'
  #
  config.resource_base_controller = 'BackendController'

  # Register backend engines here. They will be  added to the backend menu
  #
  # Example: config.backend_engines = [ MyEngine::Engine ]
  #
  # Default: config.backend_engines = []
  #
  config.backend_engines = [
    Ecm::Youtube::Backend::Engine
  ]

  # Proc that will be used to build the backend title link. The first and only
  # argument is the view.
  #
  # Default: config.title_link = Proc.new do |view|
  #            view.link_to(
  #              view.t('.title', application_name: Rails.application.class.parent_name.underscore.titleize),
  #              view.main_app.itsf_backend_path,
  #              class: 'navbar-brand'
  #            )
  #          end
  config.title_link = proc do |view|
    view.link_to(
      view.t('.title', application_name: Rails.application.class.parent_name.underscore.titleize),
      view.main_app.itsf_backend_path,
      class: 'navbar-brand'
    )
  end

  # Proc that will be used to mount engines.
  #
  # Default:
  #
  # config.engine_mount_point = Proc.new { |router, engine|
  #   router.mount(
  #     engine => I18n.t(
  #       "routes.mount.#{engine.engine_name}",
  #       default: "/#{engine.name.deconstantize.underscore}"
  #     )
  #   )
  # }
  config.engine_mount_point = proc { |router, engine|
    router.mount(
      engine => I18n.t(
        "routes.mount.#{engine.engine_name}",
        default: "/#{engine.name.deconstantize.underscore}"
      )
    )
  }

  # Methods, that will be tried on a resource to generate a nice title
  #
  # Default: config.resource_title_methods = [:human, :name, :email, :to_s]
  #
  config.resource_title_methods = [:human, :name, :email, :to_s]

  # This attributes will be hidden by default in index, show, edit and update views.
  #
  # Default: config.hidden_attributes = [:id, :friendly_id, :lft, :rgt, :depth]
  #
  config.hidden_attributes_for = {
    edit:  [:id, :slug, :lft, :rgt, :depth, :created_at, :updated_at, :position],
    index: [:id, :slug, :lft, :rgt, :depth, :position],
    show:  [:id, :slug, :lft, :rgt, :depth, :position]
  }
end
