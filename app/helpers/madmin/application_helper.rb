module Madmin
  module ApplicationHelper
    include Pagy::Frontend

    def available_resources
      @available_resources ||= Madmin::Resources.all
    end

    def madmin_resource_for(model:)
      Object.const_get("::Madmin::Resources::#{model}").new
    end

    def pages
      []
      # Madmin::Pages.all
    end
  end
end
