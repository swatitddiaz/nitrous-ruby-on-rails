class Comment
  include Mongoid::Document

  embedded_in :post, inverse_of: :comments

  field :body, type: String

  index({ starred: 1 })
end