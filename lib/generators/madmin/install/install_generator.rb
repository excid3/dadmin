require "rails/generators/base"
require "madmin/generator_helpers"

module Madmin
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Madmin::GeneratorHelpers

      def generate_resources
        resources.each do |model|
          call_generator "madmin:resource", model.to_s
        end
      end

      def install_route
        inject_into_file(
          Rails.root.join("config/routes.rb"),
          after: "Rails.application.routes.draw do\n"
        ) { "  namespace :madmin do\n  end\n  mount Madmin::Engine => \"/madmin\"\n" }
      end

      private

      def resources
        Rails.application.eager_load! unless Rails.application.config.cache_classes

        valid_models
      end

      def valid_models
        database_models - models_without_tables
      end

      def database_models
        ActiveRecord::Base.descendants.reject(&:abstract_class?)
      end

      def models_without_tables
        database_models.reject(&:table_exists?)
      end
    end
  end
end
