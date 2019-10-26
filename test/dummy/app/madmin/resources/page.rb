module Madmin
  module Resources
    class Page
      include Madmin::Resourceable

      field :id, Madmin::Field::Number, index: true, label: "ID"
      field :title, Madmin::Field::String, index: true, form: true
      field :body, Madmin::Field::String, form: true
      field :comments, Madmin::Field::HasMany, form: true
    end
  end
end
