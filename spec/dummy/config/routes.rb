Rails.application.routes.draw do
  localized do
    Itsf::Backend::Configuration.engine_mount_point.call(self, Itsf::Backend::Engine)
    # mount Itsf::Backend::Engine => '/backend'

    Itsf::Backend::Configuration.backend_engines.each do |engine|
      Itsf::Backend::Configuration.engine_mount_point.call(self, engine)
    end
  end
end
