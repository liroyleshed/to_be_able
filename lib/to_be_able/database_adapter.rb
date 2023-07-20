module ToBeAble
  class DatabaseAdapter
    class DefaultAdapter < DatabaseAdapter
      # This adapter is used when no matching adapter is found
    end

    class << self
      def inherited(subclass)
        @subclasses ||= []
        @subclasses << subclass
      end

      def adapter_class(model)
        @subclasses.detect { |subclass| subclass.for_class?(model) } || DefaultAdapter
      end

      # Used to determine if the given adapter should be used for the passed in class.
      def for_class?(member_class)
        false # override in subclass
      end

      # Override if you need custom find behavior
      def find(model, id)
        model.find(id)
      end

      # Used to determine if this model adapter will override the matching behavior for a hash of conditions.
      # If this returns true then matches_conditions_hash? will be called. See Rule#matches_conditions_hash
      def override_conditions_hash_matching?(subject, conditions)
        false
      end

      # Override if override_conditions_hash_matching? returns true
      def matches_conditions_hash?(subject, conditions)
        raise NotImplemented, "This model adapter does not support matching on a conditions hash."
      end

      # Used to determine if this model adapter will override the matching behavior for a specific condition.
      # If this returns true then matches_condition? will be called. See Rule#matches_conditions_hash
      def override_condition_matching?(subject, name, value)
        false
      end

      # Override if override_condition_matching? returns true
      def matches_condition?(subject, name, value)
        raise NotImplemented, "This model adapter does not support matching on a specific condition."
      end
    end

    def initialize(model, laws)
      @model = model
      @laws = laws
    end

    def records
      # This should be overridden in a subclass to return records which match @rules
      raise NotImplemented, "This model adapter does not support fetching records from the database."
    end
  end
end
