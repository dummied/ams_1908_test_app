class Thing < ApplicationRecord
  serialize :config, Hash
  serialize :data, JSON
end
