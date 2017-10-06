module ROM
  class Relation
    # Interface for objects that can be materialized into a loaded relation
    #
    # @api public
    module Materializable
      include Enumerable

      # @abstract
      #
      # @api public
      def call(*)
        raise NotImplementedError, "#{self.class}#call must be implemented"
      end

      # Coerce the relation to an array
      #
      # @return [Array]
      #
      # @api public
      def to_a
        call.to_a
      end
      alias_method :to_ary, :to_a

      # Yield relation tuples
      #
      # @yield [Hash,Object]
      #
      # @api public
      def each(&block)
        return to_enum unless block
        to_a.each { |tuple| yield(tuple) }
      end

      # Delegate to loaded relation and return one object
      #
      # @return [Object]
      #
      # @see Loaded#one
      #
      # @api public
      def one
        call.one
      end

      # Delegate to loaded relation and return one object
      #
      # @return [Object]
      #
      # @see Loaded#one
      #
      # @api public
      def one!
        call.one!
      end
    end
  end
end
