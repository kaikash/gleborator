require 'rails/railtie'

module Gleborator
  class Railtie < Rails::Railtie

    initializer "gleborator.active_record" do |app|
      ActiveSupport.on_load :active_record do
        Gleborator.setup self
      end
    end
  end
end
