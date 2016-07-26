module Gleborator
  class BaseDecorator
    def initialize(object)
      @object = object
    end

    def self.decorate_collection(collection)
      collection.map {|object| new(object) }
    end

    def self.delegate(*methods)
      options = methods.extract_options!
      super *methods, options.reverse_merge(to: :object)
    end
  end
end