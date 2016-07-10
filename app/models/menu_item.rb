class MenuItem < ApplicationRecord
  scope :section, -> (section) { where section: section}
end
