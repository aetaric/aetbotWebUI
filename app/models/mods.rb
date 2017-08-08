class Mods
  include Mongoid::Document
  store_in collection: "mods"

  field :nick,     type: String
  field :channels, type: Array, default: []
end
