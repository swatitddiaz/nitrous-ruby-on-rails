class User
  include Mongoid::Document

  field :name, type: String

  index({ starred: 1 })
end