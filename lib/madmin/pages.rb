module Madmin
  module Pages
    def self.gather
      all
    rescue NoMethodError
      raise NoPagesError,
        "You must define an array of pages as `self.all` in lib/madmin/pages.rb"
    rescue NameError => e
      raise PageNotFoundError, "Madmin cannot locate the page #{e.name}."
    end
  end
end
