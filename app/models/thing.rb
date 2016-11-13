class Thing < ApplicationRecord
  serialize :config, Hash
  serialize :data, JSON

  def config
    puts caller.join("\n\t")
    self[:config].freeze
  end

end
