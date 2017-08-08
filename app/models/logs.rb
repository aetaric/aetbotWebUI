class Logs
  include Mongoid::Document
  store_in collection: "logs"

  field :time,    type: DateTime
  field :type,    type: String
  field :nick,    type: String
  field :channel, type: String
  field :msg,     type: String
  field :tags,    type: Hash
end
