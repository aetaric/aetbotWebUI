class Users
  include Mongoid::Document
  store_in collection: "users"

  field :uid,            type: Integer
  field :provider,       type: String
  field :name,           type: String
  field :oauth,          type: String
  field :display_name,   type: String
  field :imageurl,       type: String
  field :partnered,      type: Boolean
end
