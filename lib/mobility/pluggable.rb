# frozen_string_literal: true

module Mobility
=begin

Abstract Module subclass with methods to define plugins and defaults.
Works with {Mobility::Plugin}. (Subclassed by {Mobility::Attributes}.)

=end
  class Pluggable < Module
    class << self
      def plugin(name, **options)
        Plugin.configure(self, defaults) { __send__ name, **options }
      end

      def plugins(&block)
        Plugin.configure(self, defaults, &block)
      end

      def defaults
        @defaults ||= {}
      end

      def default(name, value)
        @defaults[name.to_sym] = value
      end

      def inherited(klass)
        super
        klass.defaults.merge!(defaults)
      end
    end

    def initialize(*, **options)
      @options = self.class.defaults.merge(options)
    end

    attr_reader :options
  end
end
