module Ecm
  module Youtube
    module Backend
      class Engine < ::Rails::Engine
        isolate_namespace Ecm::Youtube::Backend
      end
    end
  end
end
