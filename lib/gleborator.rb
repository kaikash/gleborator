require "gleborator/version"
require "gleborator/base_decorator"
require "gleborator/setup"
require "gleborator/railtie" if defined?(Rails)

module Gleborator
  def self.setup(klass)
    klass.class_eval do
      include Gleborator::Setup
    end
  end
end
