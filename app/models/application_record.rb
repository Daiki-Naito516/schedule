class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

def checked?(data)
  ActiveRecord::Type::Boolean.new.cast(data)
end