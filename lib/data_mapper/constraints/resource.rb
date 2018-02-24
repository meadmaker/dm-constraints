module DataMapper
  module Constraints
    module Resource
      def before_destroy_hook
        instance_variable_set('@_constraint_destroy_process', true)
        enforce_destroy_constraints
        super
      end

      def after_destroy_hook
        remove_instance_variable('@_constraint_destroy_process')
      end

    private

      # Check delete constraints prior to destroying a dm resource or collection
      #
      # @note
      #   - It only considers a relationship's constraints if this is the parent model (ie a child shouldn't delete a parent)
      #   - Many to Many Relationships are skipped, as they are evaluated by their underlying 1:M relationships
      #
      # @return [nil]
      #
      # @api semi-public
      def enforce_destroy_constraints
        relationships.each do |relationship|
          next unless relationship.respond_to?(:enforce_destroy_constraint)

          constraint_satisfied = relationship.enforce_destroy_constraint(self)

          throw(:halt, false) unless constraint_satisfied
        end
      end

    end # module Resource
  end # module Constraints

  Model.append_inclusions Constraints::Resource
end # module DataMapper
