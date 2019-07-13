class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  has_many :post_hash_tags
  has_many :hash_tags, through: :post_hash_tags
end
