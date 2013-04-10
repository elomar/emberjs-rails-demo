# Add Strong Attributes suuport to all models (Remove in Rails4)
ActiveRecord::Base.send(:include, ActiveModel::ForbiddenAttributesProtection)

# MonkeyPatch Inherited Resources to support strong parameters
module InheritedResources
  module BaseHelpers
    protected

    def build_resource
      get_resource_ivar || set_resource_ivar(end_of_association_chain.send(method_for_build, request.get? ? {} : resource_params))
    end

    def update_resource(object, attributes)
      object.update_attributes(attributes)
    end
  end
end
