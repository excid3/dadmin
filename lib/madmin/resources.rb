module Madmin
  module Resources
    def self.all
      Madmin::Resources.constants.select{|c| Madmin::Resources.const_get(c).is_a? Class}.map{ |model| Object.const_get("::Madmin::Resources::#{model}").new}
    end
  end
end
