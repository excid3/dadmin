module Madmin
  module ApplicationHelper
    def available_resources
      @available_resources ||= Madmin::Resources.gather.map { |model| madmin_resource_for(model: model) }
    end

    def pages
      @pages ||= Madmin::Pages.gather.map { |page| madmin_page_for(page: page) }
    end

    def madmin_resource_for(model:)
      Object.const_get("::Madmin::Resources::#{model}").new
    end

    def madmin_page_for(page:)
      Object.const_get("::Madmin::Pages::#{page}").new
    end
  end
end
