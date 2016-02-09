module Ecm
  module Youtube
    module Backend
      module Generators
        class InstallGenerator < Rails::Generators::Base
          desc 'Generates the intializer'

          source_root File.expand_path('../templates', __FILE__)

          def generate_initializer
            copy_file 'initializer.rb', 'config/initializers/ecm_youtube_backend.rb'
          end

          def add_to_itsf_backend
            insert_into_itsf_backend_config(Ecm::Youtube::Backend::Engine)
          end

          private

          def insert_into_itsf_backend_config(engine_name)
            inject_into_file 'config/initializers/001_itsf_backend.rb', after: "config.backend_engines = %w(\n" do
              "    #{engine_name}\n"
            end
          end
        end
      end
    end
  end
end
