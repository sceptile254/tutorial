class ApplicationRecord < ActiveRecord::Base #ActiveRecord::Baseを継承している
  self.abstract_class = true
end
