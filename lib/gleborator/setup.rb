module Gleborator
  module Setup
    def decorate
      begin
        decorator_class = "#{self.class.name}Decorator".constantize
        decorator_class.wrap(self)
      rescue NameError => e
        raise "Couldn't find decorator #{self.class.name}Decorator"
      end
    end
  end
end