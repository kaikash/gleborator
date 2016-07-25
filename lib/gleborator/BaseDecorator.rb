module Gleborator
  class BaseDecorator
    def initialize(object)
      @object = object
    end

    def self.wrap(object)
      if object.respond_to? :map

      else
        
      end
    end
  end
end