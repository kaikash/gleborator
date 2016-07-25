module Gleborator
  module Setup
    extend ActiveSupport::Concern

    def decorate
      begin
        decorator_class = "#{self.class.name}Decorator".constantize
        decorator_class.new(self)
      rescue NameError => e
        raise "Couldn't find decorator #{self.class.name}Decorator"
      end
    end

    module ClassMethods
      def decorate
        begin
          decorator_class = "#{self.name}Decorator".constantize
          decorate_class.decorate_collection(self)
        rescue NameError => e
          raise "Couldn't find decorator #{self.name}Decorator"
        end
      end
    end
  end
end