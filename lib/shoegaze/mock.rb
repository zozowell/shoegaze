module Shoegaze
  class Mock
    extend ProxyInterface

    class InvalidNamespaceError < StandardError; end

    class << self
      def mock(class_name)
        @_class_name = class_name
        @implementations = {class: {}, instance: {}}
      end
    end
  end
end
