class PostIt < ApplicationRecord
  acts_as_nested_set counter_cache: :children_count
  enum status: { backlog:0, in_progress:1, done:2, deleted:3 }
end
