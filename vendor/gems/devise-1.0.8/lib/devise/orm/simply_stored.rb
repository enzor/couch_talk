module Devise
  module Orm
    module SimplyStored
      module Hook
        def devise_modules_hook!
          extend Schema
          yield
          return unless Devise.apply_schema
          devise_modules.each { |m| send(m) if respond_to?(m, true) }
        end

      end

      module Schema
        include Devise::Schema

        # Tell how to apply schema methods.
        def apply_devise_schema(name, type, options={})
          return unless Devise.apply_schema
          property name, :cast_as => type
        end
      end
    end
  end
end

SimplyStored::Couch::ClassMethods.class_eval do
  include Devise::Models
  include Devise::Orm::SimplyStored::Hook
end

module Devise
  module Models
    module Validatable

      def self.included(base)
        base.extend ClassMethods
        assert_validations_api!(base)

        base.class_eval do
          validates_presence_of :email
          validates_uniqueness_of :email, :allow_blank => true
          validates_format_of :email, :with => EMAIL_REGEX, :allow_blank => true

          with_options :if => :password_required? do |v|
            v.validates_presence_of :password
            v.validates_confirmation_of :password
            v.validates_length_of :password, :within => 6..20, :allow_blank => true
          end
        end
      end

      def persisted?
        # hack
        false
      end

    end
  end
end