module Madmin
  class Field
    ##
    # This field represents a :has_many relationship within a Rails model.
    class HasMany < Madmin::Field
      include Madmin::Field::Associatable

      def singularized_key
        key.to_s.singularize
      end

      def count(resource)
        value_for(resource).count
      end
    end
  end
end
