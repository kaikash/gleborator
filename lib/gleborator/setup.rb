module Gleborator
  module Setup
    extend ActiveSupport::Concern

    def decorate
      decorator_class.new(self)
    end

    def decorator_class
      self.class.decorator_class
    end

    module ClassMethods
      def decorate
        decorator_class.decorate_collection all
      end

      def decorator_class
        begin
          prefix = respond_to?(:model_name) ? model_name : name
          decorator_name = "#{prefix}Decorator"
          decorator_name.constantize
        rescue NameError => e
          raise "Couldn't find decorator #{decorator_name}"
        end
      end
    end
  end
end