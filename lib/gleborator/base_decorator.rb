module Gleborator
  class BaseDecorator
    def initialize(object)
      @object = object
    end

    def self.decorate_collection(collection)
      collection.map {|object| new(object) }
    end
  end
end